import 'package:appetzing/screens/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

 class SignInScreen extends StatelessWidget {

   TextEditingController email = TextEditingController() ;
   TextEditingController password = TextEditingController() ;

    var  form = GlobalKey<FormState> () ;

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       extendBodyBehindAppBar: true,
       body: SafeArea(
         child: Stack(
           fit: StackFit.expand,
            children: [
              Image.asset('images/3.jpg',fit: BoxFit.cover,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text ('Sign in',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        Text(
                          'don\'t have an account?',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[500]),
                        ),
                        TextButton(
                            onPressed: ()
                            {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpScreen()));
                            },
                            child: Text('sign up')
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Form(
                key: form,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        validator: (value)
                        {
                          if(value!.isEmpty)
                            {
                              return ' please enter your email address' ;
                            }
                          else
                            {
                             return null ;
                            }
                        },
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                          prefixIcon:Icon(Icons.email,color: Colors.black,),
                          labelText: 'Email Address' ,
                          labelStyle: TextStyle(color: Colors.blueGrey[900]),) ,
                        ),
                      SizedBox(height: 25,),
                      TextFormField(
                        validator:(value)
                        {
                          if(value!.isEmpty)
                            {
                              return ' please enter your password' ;
                            }
                          else
                          {
                            return null ;
                          }
                        },
                        controller: password,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                          prefixIcon:Icon(Icons.remove_red_eye,color: Colors.black,),
                          labelText: 'Password' ,
                          labelStyle: TextStyle(color: Colors.blueGrey[900]),) ,
                        ),


                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child:Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: (){
                          if(form.currentState!.validate())
                            {
                               print(email);
                               print(password);
                            }
                          else
                            {
                              return null ;
                            }
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                        },
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.all(16),
                            backgroundColor: Colors.grey[600]!.withOpacity(.1),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                        ),
                        child: Text('Login',style: TextStyle(color: Colors.blueGrey[900]),) ),
                  ),
                ),
              )
            ],
         ),
       ),
     );
   }
 }
