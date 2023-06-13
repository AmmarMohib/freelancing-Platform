import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final String imageUrl;
  final String text;
  final VoidCallback onTap;
  // final IconData iconurl;
  const SignUpButton(
      {Key? key,
      required this.imageUrl,
      required this.onTap,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all<Color>(Colors.black12),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: const BorderSide(color: Colors.white))),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            elevation: MaterialStateProperty.all(0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Stack(children: [
                Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageUrl.toString() != ""
                          ? AssetImage(imageUrl)
                          : AssetImage('assets/images/blank.png'),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ]),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        // by onpressed we call the function signup function
        onPressed: () {
          onTap();
        },
      ),
    );
  }
}

class JobButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  // final IconData iconurl;
  const JobButton({Key? key, required this.onTap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all<Color>(Colors.black12),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: const BorderSide(color: Colors.white))),
            backgroundColor:
                MaterialStateProperty.all(Color.fromRGBO(20, 168, 0, 1.0)),
            elevation: MaterialStateProperty.all(0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        // by onpressed we call the function signup function
        onPressed: () {
          onTap();
        },
      ),
    );
  }
}

class PostButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool green;
  // final IconData iconurl;
  const PostButton(
      {Key? key, required this.onTap, required this.text, required this.green})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 100,
      height: 45,
      child: ElevatedButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all<Color>(Colors.black12),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: const BorderSide(
                        color: Color.fromRGBO(20, 168, 0, 1.0)))),
            backgroundColor: green == true
                ? MaterialStateProperty.all(Color.fromRGBO(20, 168, 0, 1.0))
                : MaterialStateProperty.all(Colors.white),
            elevation: MaterialStateProperty.all(0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 20,),
            Text(
              text,
              style: TextStyle(
                  color: green == false
                      ? Color.fromRGBO(20, 168, 0, 1.0)
                      : Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(width: 20,),
          ],
        ),
        // by onpressed we call the function signup function
        onPressed: () {
          onTap();
        },
      ),
    );
  }
}
