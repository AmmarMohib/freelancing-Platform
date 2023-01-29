import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:truelancer_clone/intro/intro.dart';
import 'package:truelancer_clone/signup/signup.dart';
// import 'package:olx_clone/routes/home/homepage.dart';

// creating firebase instance
final FirebaseAuth auth = FirebaseAuth.instance;

Future<void> signup(BuildContext context) async {
  // print("object");
  var currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser != null) {
        Fluttertoast.showToast(msg: 'You have already an account please go to Login Page');    
    // print(currentUser.displayName);

    // Navigator.pushReplacement(
    // context, MaterialPageRoute(builder: (context) => PhoneNumVer()));
  } else {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);

      // Getting users credential
      UserCredential result = await auth.signInWithCredential(authCredential);
      User? user = result.user;
      print(user);
      print(result);
      // ignore: unnecessary_null_comparison
      if (result != null) {
        Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (context) => PhoneNumVer()));
        print(result);
        // Navigator.push(context,
        // MaterialPageRoute(builder: (context) => IntroScreenDefault()));
        // Navigator.pushReplacement(
        // context, MaterialPageRoute(builder: (context) => PhoneNumVer()));
      } // if result not null we simply call the MaterialpageRoute,
      // for go to the HomePage screen
      else {
        print(result);
      }
    }
  }
}
