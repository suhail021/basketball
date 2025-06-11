import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google/cubit/counter_cubit.dart';
import 'package:google/cubit/counter_state.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CountertState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text(
              'Points Counter',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Team A', style: TextStyle(fontSize: 30)),
                      Text('${BlocProvider.of<CounterCubit>(context).teamAPoints}', style: TextStyle(fontSize: 150)),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).TeamIncrement(team: 'A', bottomNumber: 1);
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).TeamIncrement(team: 'A', bottomNumber: 2);
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).TeamIncrement(team: 'A', bottomNumber: 3);
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 400,
                    child: VerticalDivider(
                      indent: 20,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      Text('Team B', style: TextStyle(fontSize: 30)),
                      Text('${BlocProvider.of<CounterCubit>(context).teamAPoints}', style: TextStyle(fontSize: 150)),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).TeamIncrement(team: 'B', bottomNumber: 1);
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).TeamIncrement(team: 'B', bottomNumber: 2);
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).TeamIncrement(team: 'B', bottomNumber: 3);
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 80),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(150, 50),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(
                    context,
                  ).TeamIncrement(team: 'sss', bottomNumber: 0);
                },
                child: Text(
                  'Resat',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ],
          ),
        );
      },
      listener: (context, state) {

      },
    );
  }
}
