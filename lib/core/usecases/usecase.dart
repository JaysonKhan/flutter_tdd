import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/error/failures.dart';

abstract class Usecase<Type, NoParams> {
  Future<Either<Failure, Type>> call(NoParams params);
}

class NoParams {}
