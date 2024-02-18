import 'package:flutter/material.dart';

class QuotesLoadedPage extends StatelessWidget {
  final String loadedMsg;
  QuotesLoadedPage({super.key, required this.loadedMsg});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      color: Colors.teal,
      width: size.width * 0.7,
      height: 100,
      child: Row(
        children: [
          Text(loadedMsg),
        ],
      ),
    );
  }
}
