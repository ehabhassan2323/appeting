import 'package:appetzing/provider/provider.dart';
import 'package:appetzing/screens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<States>(
      create: (context)=> States(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          home : SplashScreen(),
      ),
    );
  }
}
