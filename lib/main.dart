import 'package:bloc_first/cubit/counter_cubit.dart';
import 'package:bloc_first/cubit/cubit_state.dart';
import 'package:bloc_first/screens/countapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MaterialApp(
    //here we create the instance of
    //BlocCubit and this object is available in widget tree

    // home: BlocProvider(create: (context) => CounterCubit(0), child: CountApp()),
    home: BlocProvider(
      create: (context) => CounterCubit(CustomCubitState(0, 0)),
      child: CountApp(),
    ),
  ));
}
