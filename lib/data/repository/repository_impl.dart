import 'package:dartz/dartz.dart';
import 'package:tut_e_commerce_app/data/data_sources/remote_data_source.dart';
import 'package:tut_e_commerce_app/data/mapper/mapper.dart';
import 'package:tut_e_commerce_app/data/network/error_handler.dart';
import 'package:tut_e_commerce_app/data/network/failure.dart';
import 'package:tut_e_commerce_app/data/network/network_info.dart';
import 'package:tut_e_commerce_app/data/request/request.dart';
import 'package:tut_e_commerce_app/domain/model.dart';
import 'package:tut_e_commerce_app/domain/repository.dart';

class RepositoryImpl extends Repository {
  RemoteDataSource _remoteDataSource;
  NetworkInfo _networkInfo;

  RepositoryImpl(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, Authentication>> login(
      LoginRequest loginRequest) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _remoteDataSource.login(loginRequest);
        if (response.status == ApiInternalStatus.SUCCESS) {
          return Right(response.toDomain());
        } else {
          return Left(Failure(response.status ?? ApiInternalStatus.FAILURE,
              response.message ?? ResponseMessage.DEFAULT));
        }
      } catch (error) {
        return (Left(ErrorHandler.handle(error).failure));
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }
}
