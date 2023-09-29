import 'package:equatable/equatable.dart';
import 'package:flutter_tdd/core/error/failures.dart';
import 'package:flutter_tdd/core/usecases/usecase.dart';
import 'package:flutter_tdd/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_tdd/feature/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class GetConcreteNumberTrivia implements Usecase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;
  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async =>
      await repository.getConcreteNumberTrivia(params.number);
}
class Params extends NoParams {
  final int number;

  Params({required this.number});
}