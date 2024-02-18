import 'package:bloc_flutter/example_1/bloc/quotes/quotes_bloc.dart';
import 'package:bloc_flutter/example_1/screens/widgets/quotes_error.dart';
import 'package:bloc_flutter/example_1/screens/widgets/quotes_loaded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Bloc Example 1"),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<QuotesBloc, QuotesState>(
                  builder: (context, state) {
                    if (state is QuotesInitial) {
                      return Text("Quotes is waiting");
                    } else if (state is QuotesLoading) {
                      return CircularProgressIndicator();
                    } else if (state is QuotesLoaded) {
                      return QuotesLoadedPage(loadedMsg: state.loadedQuote);
                    } else if (state is QuotesError) {
                      return QuotesErrorPage(errorMsg: state.errorQuote);
                    } else {
                      return Text("Unhandled state");
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<QuotesBloc>(context).add(QuoteRequestEvent());
                    }, child: Text("Generate Quotes")),
              )
            ],
          )),
    );
  }
}
