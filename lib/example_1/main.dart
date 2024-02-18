import 'package:bloc_flutter/example_1/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/quotes/quotes_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<QuotesBloc>(
            create: (BuildContext context) => QuotesBloc(),
          ),
        ],
        child: MaterialApp(
          home: HomePage(),
        ));
  }
}
