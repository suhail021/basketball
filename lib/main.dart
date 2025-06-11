import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google/cubit/counter_cubit.dart';
import 'package:google/home_page.dart';

void main() {
  runApp(Basketball());
}


class Basketball extends StatelessWidget {
  const Basketball({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage()
      ),
    );
  }
}
