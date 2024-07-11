import 'package:cubit_bloc/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.read<CounterCubit>().decreament();
            },
            icon: const Icon(
              Icons.remove,
            ),
          ),
          IconButton(
            onPressed: () {
              context.read<CounterCubit>().increament();
            },
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Center(
            child: Text(state.toString()),
          );
        },
      ),
    );
  }
}
