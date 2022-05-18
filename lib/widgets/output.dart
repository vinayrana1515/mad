import 'package:bloc_first/cubit/counter_cubit.dart';
import 'package:bloc_first/cubit/cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Output extends StatelessWidget {
  const Output({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: BlocBuilder<CounterCubit, int>(
    //     builder: (ctx, state) {
    //       return Text(
    //         'Count Value is $state',
    //         style: TextStyle(fontSize: 40),
    //       );
    //     },
    //   ),
    // );

    return Container(
      child: BlocBuilder<CounterCubit, CustomCubitState>(
        builder: (ctx, state) {
          return Text(
            'Count Value is ${state.first} ${state.second}',
            style: TextStyle(fontSize: 40),
          );
        },
      ),
    );
  }
}
