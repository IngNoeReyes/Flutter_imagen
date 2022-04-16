import 'package:flutter/widgets.dart';
import 'package:helloworld/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
        Text("Card Widget", style: TextStyle(fontSize: 30)),
        ElevatedButton(
          child: Text("Go"),
          onPressed: () {
            Navigator.pushNamed(context, "/image");
          },
        )
      ],
        ),
      ),
    );
  }
}
