import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../example_1/screens/home_page.dart';
import 'bloc/counter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CounterBloc>(
            create: (BuildContext context) => CounterBloc(),
          ),
        ],
        child: MaterialApp(
          home: HomePage(),
        ));
  }
}
