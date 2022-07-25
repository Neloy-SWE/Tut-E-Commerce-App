import 'package:dartz/dartz.dart';
import 'package:tut_e_commerce_app/data/data_sources/remote_data_source.dart';
import 'package:tut_e_commerce_app/data/mapper/mapper.dart';
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
      final response = await _remoteDataSource.login(loginRequest);
      if (response.status == 0) {
        return Right(response.toDomain());
      } else {
        return Left(Failure(
            409, response.message ?? "we have biz error logic from API side"));
      }
    } else {
      return Left(Failure(501, "Please check your internet connection"));
    }
  }
}
