import 'package:bloc_first/cubit/cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//  to create Cubit (Function Based) we need to extends Cubit
//class CounterCubit extends Cubit<int> {
class CounterCubit extends Cubit<CustomCubitState> {
  // Create a parameterized constructor
  // which take initialState  value and call the
  //parent class constructor

  // CounterCubit(int initialState) : super(initialState);

  CounterCubit(CustomCubitState initialState) : super(initialState);
  // create Operatiosn (func) call from UI/widget

  void plus() {
    // logic stuff or ur calling some other logic(Service, repository, )
    //  emit(state + 1);

    emit(CustomCubitState(state.first + 1, state.second + 2));
    // fire the event so listener on another widget can listen the changes
  }
}
