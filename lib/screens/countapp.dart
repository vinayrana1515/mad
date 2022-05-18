import 'package:bloc_first/widgets/operations.dart';
import 'package:bloc_first/widgets/output.dart';
import 'package:flutter/material.dart';

class CountApp extends StatelessWidget {
  const CountApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        appBar: AppBar(title: Text('BLOC')),
        body: Column(
          children: [Output(), Operations()],
        ),
      ),
    );
  }
}
