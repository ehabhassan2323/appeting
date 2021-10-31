import 'package:appetzing/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // page()
    // {
    //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SignUpScreen()));
    // }
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'images/3.jpg',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Create Account',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Already have an account?',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[500]),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SignInScreen()));
                              },
                              child: Text('sign in',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Username',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please enter your user name ';
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: 'username',
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ' please enter your email ';
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            prefixIcon: Icon(Icons.email, color: Colors.black),
                            labelText: 'email',
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Phone',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ' please enter your phone ';
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            prefixIcon: Icon(Icons.phone, color: Colors.black),
                            labelText: 'phone',
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ' please enter your password ';
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            prefixIcon:
                                Icon(Icons.remove_red_eye, color: Colors.black),
                            labelText: 'password',
                          ),
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: (){
                                    if(formKey.currentState!.validate())
                                      {
                                        showDialog(context: context, builder: (context){
                                          return AlertDialog(
                                            title: Text('thanks'),
                                            content: Text('Account sign up Successfly.. press ok to sign in'),
                                            contentTextStyle: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.black),
                                            actions: [
                                              TextButton(onPressed: ()
                                              {
                                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SignInScreen()));

                                              }
                                              , child: Text('ok'))
                                            ],

                                           );
                                        });
                                      }
                                  },
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.all(16),
                                      backgroundColor:
                                          Colors.grey[600]!.withOpacity(.1),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                  child: Text(
                                    'Sign in',
                                    style:
                                        TextStyle(color: Colors.blueGrey[900]),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
