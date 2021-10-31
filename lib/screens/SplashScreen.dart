import 'package:flutter/material.dart';

import 'login_Screen.dart';

class SplashScreen extends StatefulWidget {
  
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState()
  {
    super.initState();
    Future.delayed(Duration(seconds: 5), page);
  }
   page ()
   {
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginScreen()));
   }
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/2.jpeg'),
            fit: BoxFit.cover
          )
        ),
        child: Center(child: Text('GRADO', style: TextStyle(fontSize: 32, fontWeight:FontWeight.bold),)),
      )
    );
  }
}
