import 'package:bloc_first/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Operations extends StatelessWidget {
  const Operations({Key? key}) : super(key: key);
//BLOC CUBIT, Get instance of Bloc Cubit

  @override
  Widget build(BuildContext context) {
    CounterCubit cubit = BlocProvider.of<CounterCubit>(context);
    return Container(
      child: ElevatedButton(
        child: Text('Plus'),
        onPressed: () {
          cubit.plus();
          //call  Cubit
        },
      ),
    );
  }
}
