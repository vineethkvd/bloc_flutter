import 'package:flutter/material.dart';

class QuotesErrorPage extends StatelessWidget {
  final String errorMsg;
  QuotesErrorPage({super.key,required this.errorMsg});

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
          Icon(Icons.error),
          Text(errorMsg),
        ],
      ),
    );
  }
}
