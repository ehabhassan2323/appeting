import 'package:appetzing/screens/sign_in_screen.dart';
import 'package:appetzing/screens/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
       body: Stack(
         fit: StackFit.expand ,
         children: [
           Image.asset('images/3.jpg' , fit: BoxFit.cover,),
           SafeArea(
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 30),
               child: Column(
                 children: [
                   Spacer(),
                   Text('GRADO', style: TextStyle(fontSize: 32, fontWeight:FontWeight.bold),),
                    Spacer(),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignInScreen()));
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(16),
                            backgroundColor: Colors.grey[600]!.withOpacity(.1),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                          ),
                          child: Text('Sign in',style: TextStyle(color: Colors.blueGrey[900]),) ),
                    ),
                   SizedBox(height: 15,),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: ()
                          {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpScreen()));
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(16),
                            backgroundColor: Colors.grey[600]!.withOpacity(.1),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                          ),
                          child: Text('Sign up',style: TextStyle(color: Colors.blueGrey[900]),) ),
                    ),
                   SizedBox(height: 30,),
                 ],

               ),
             ),
           )
         ],
       )

    );
  }
}
