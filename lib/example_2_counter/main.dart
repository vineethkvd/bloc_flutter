import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),
      body: Container(
          child: Column(
        children: [
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: Text("+")),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(onPressed: () {}, child: Text("-"))
            ],
          )
        ],
      )),
    );
  }
}
