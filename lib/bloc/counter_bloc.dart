import 'package:flutter_bloc/flutter_bloc.dart';

abstract class MathEvent {}

class PlusEvent extends MathEvent {}

class MinusEvent extends MathEvent {}

class OperationState {
  int first = 0;
  int second = 0;
  OperationState(this.first, this.second);
}

class CounterBloc extends Bloc<MathEvent, OperationState> {
  CounterBloc(OperationState initialState) : super(initialState) {
    on<PlusEvent>((event, emit) =>
        emit(OperationState(state.first + 1, state.second + 5)));

    on<MinusEvent>((event, emit) =>
        emit(OperationState(state.first + 2, state.second + 2)));
  }
}
