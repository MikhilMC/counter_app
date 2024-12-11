import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDecPage extends StatelessWidget {
  const IncDecPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => counterBloc.add(CounterIncremented()),
              tooltip: 'Increment',
              heroTag: "incrementFAB",
              child: const Icon(Icons.add),
            ),
            const Spacer(),
            FloatingActionButton(
              onPressed: () => counterBloc.add(CounterDecremented()),
              tooltip: 'Decrement',
              heroTag: "decrementFAB",
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
