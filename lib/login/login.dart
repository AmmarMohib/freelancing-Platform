import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:truelancer_clone/commons/buttons.dart';
import 'package:truelancer_clone/commons/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/wombackwork.png'),
                  colorFilter: const ColorFilter.mode(
                      Color.fromRGBO(43, 43, 43, 1.0), BlendMode.color),
                  fit: BoxFit.cover)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(47, 47, 47, 1.0).withOpacity(0)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png'),
                    const SizedBox(
                      height: 50,
                    ),
                    LoginTextField(labelText: "Email",),
                    const SizedBox(
                      height: 10,
                    ),
                    LoginTextField(labelText: "Password",),
                    const SizedBox(height: 30,),
                    SignUpButton(
                        imageUrl: '',
                        onTap: () {},
                        text: 'Login'),
                    const SizedBox(
                      height: 25,
                    ),
                    Text("OR", style: TextStyle(color: Colors.white),),
                    SizedBox(height: 20,),
                    SignUpButton(
                        imageUrl: 'assets/images/google_logo.png',
                        onTap: () {},
                        text: 'Signup with Google'),
                        SizedBox(height: 10,),
                    SignUpButton(
                        imageUrl: 'assets/images/facebook_logo.png',
                        onTap: () {},
                        text: 'Signup with Facebook'),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 170,
                    ),
                    InkWell(
                        onTap: (() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                        }),
                        child: const Text(
                          "Already have an account? Login Here",
                          style: TextStyle(
                              color: Color.fromARGB(255, 238, 226, 226),
                              fontSize: 19),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "By Signing up you agree to our \n       Terms and Conditions",
                      style: TextStyle(
                          color: Color.fromARGB(255, 238, 226, 226),
                          fontSize: 12),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Privacy Policy",
                      style: TextStyle(
                          color: Color.fromARGB(255, 238, 226, 226),
                          fontSize: 12),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}