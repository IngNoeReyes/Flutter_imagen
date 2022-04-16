import 'package:flutter/material.dart';
import 'package:helloworld/screens/images_screen.dart';
import 'package:helloworld/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: primary(),
        initialRoute: "/home",
        routes: {
          "/home": (BuildContext context) => HomeScreen(),
          "/image": (BuildContext context) => ImageScreen(),
        },
        theme: ThemeData(primarySwatch: Colors.blue, accentColor: Colors.blue, textTheme: TextTheme(bodyText2: TextStyle(color: Colors.blueGrey, fontSize: 30)))
        // A widget which will be started on application startup
        );
  }
}