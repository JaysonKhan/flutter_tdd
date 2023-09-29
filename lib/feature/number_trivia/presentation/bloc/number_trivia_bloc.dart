import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/error/failures.dart';
import 'package:flutter_tdd/core/usecases/usecase.dart';
import 'package:flutter_tdd/core/utils/input_convertor.dart';
import 'package:flutter_tdd/core/utils/loading_state_enum.dart';
import 'package:flutter_tdd/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_tdd/feature/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:flutter_tdd/feature/number_trivia/domain/usecases/get_random_number_trivia.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_trivia_event.dart';

part 'number_trivia_state.dart';

part 'number_trivia_bloc.freezed.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';
const String INVELID_INPUT_FAILURE_MESSAGE = 'Invalid Input Failure';

class NumberTriviaBloc extends Bloc<NumberTriviaEvent, NumberTriviaState> {
  final GetConcreteNumberTrivia getConcreteNumberTrivia;
  final GetRandomNumberTrivia getRandomNumberTrivia;
  final InputConverter inputConvertor;

  NumberTriviaBloc({
    required this.getConcreteNumberTrivia,
    required this.getRandomNumberTrivia,
    required this.inputConvertor,
  }) : super(const NumberTriviaState.uiState()) {
    on<NumberTriviaEvent>((event, emit) async {
      switch (event) {
        case _ConcreteEvent():
          emit(state.copyWith(state: LoadingState.LOADING));
          final inputEither =
              inputConvertor.stringToUnsignedInteger(event.numberString);
          await inputEither.fold(
            (failure) async => emit(state.copyWith(
                state: LoadingState.ERROR,
                errorMessage: _mapFailureMessage(failure))),
            (integer) async {
              final failureOrSuccess =
                  await getConcreteNumberTrivia(Params(number: integer));
              _eitherLoadedOrErrorState(emit, state, failureOrSuccess);
            },
          );
          break;
        case _RandomEvent():
          emit(state.copyWith(state: LoadingState.LOADING));
          final failureOrSuccess = await getRandomNumberTrivia(NoParams());
          _eitherLoadedOrErrorState(emit, state, failureOrSuccess);
          break;
        case _Started():
          break;
      }
    });
  }

  String _mapFailureMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHE_FAILURE_MESSAGE;
      case InvalidInputFailure:
        return INVELID_INPUT_FAILURE_MESSAGE;
      default:
        return 'Aniqlanmagan Xatolik';
    }
  }

  void _eitherLoadedOrErrorState(
      Emitter<NumberTriviaState> emit,
      NumberTriviaState state,
      Either<Failure, NumberTrivia> failureOrSuccess) async {
    failureOrSuccess.fold(
      (failure) async => emit(state.copyWith(
          state: LoadingState.ERROR,
          errorMessage: _mapFailureMessage(failure))),
      (trival) async => emit(state.copyWith(
          state: LoadingState.LOADED,
          number: trival.number,
          text: trival.text)),
    );
  }
}
