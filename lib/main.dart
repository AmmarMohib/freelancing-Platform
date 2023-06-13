import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:truelancer_clone/Home/home.dart';
import 'package:truelancer_clone/intro/intro.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    
      options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final String documentId = FirebaseAuth.instance.currentUser!.uid;
    // CollectionReference users = FirebaseFirestore.instance.collection('users');
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: FirebaseAuth.instance.currentUser == null ? IntroScreenDefault() : HomePage(),
    // );
         return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirebaseAuth.instance.currentUser == null ? IntroScreenDefault() : HomePage(),
    );
  }
}
