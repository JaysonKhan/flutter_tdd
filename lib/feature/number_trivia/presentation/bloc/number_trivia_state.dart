part of 'number_trivia_bloc.dart';

@freezed
class NumberTriviaState with _$NumberTriviaState {
  const factory NumberTriviaState.uiState({
    @Default(LoadingState.EMPTY) LoadingState state,
    @Default("") String text,
    @Default("") String errorMessage
}) = _UiState;
}
