import 'package:flutter/material.dart';



class LoginTextField extends StatefulWidget {
  final labelText;
  const LoginTextField({super.key, required this.labelText});

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextField(
  decoration: InputDecoration(
      // fillColor: ,
      labelStyle: TextStyle(color: Colors.white),
      // border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
            ),
      // hintText: 'Enter a search term',
      labelText: widget.labelText
  ),
),
    );
  }
}