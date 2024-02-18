import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Counter Bloc"),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // BlocProvider.of<CounterBloc>(context).add(Increment());
            return context.read<CounterBloc>().add(Increment());
          },
          label: Text("+")),
      body: Container(
          child: Column(
            children: [
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Text("${state.count}");
                },
              )
            ],
          )),
    );
  }
}
