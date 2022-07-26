import 'package:dartz/dartz.dart';
import 'package:tut_e_commerce_app/data/network/failure.dart';

abstract class BaseUseCase<In, Out>{
  Future<Either<Failure, Out>> execute(In input);
}