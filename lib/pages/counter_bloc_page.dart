import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_core_concepts/bloc/counter_bloc.dart';
import 'package:flutter_bloc_core_concepts/bloc/counter_state.dart';
import 'package:flutter_bloc_core_concepts/widgets/buttons.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bloc Pattern")),
      floatingActionButton: const FloatingActionButtons(),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            if (state is CounterInitial) {
              return const Text("0");
            } else if (state is CounterValueChangedState) {
              return Text(state.count.toString());
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
