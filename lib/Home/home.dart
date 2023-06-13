import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:truelancer_clone/Client/Jobs/talent.dart';
import 'package:truelancer_clone/Client/Talent/talent.dart';
import 'package:truelancer_clone/Freelancer/Jobs/jobs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tabtextcolor = Color.fromRGBO(20, 168, 0, 1.0);
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('UserDetails')
        .snapshots();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: StreamBuilder<QuerySnapshot>(
                stream: _usersStream,
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text('Something went wrong');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Text("Loading");
                  }
                  // return Text("data");
                  // return snapshot.data!= null ? snapshot.data![0]['']
                  //      return MaterialApp(
                  //   debugShowCheckedModeBanner: false,
                  //   home: FirebaseAuth.instance.currentUser == null ? IntroScreenDefault() : HomePage(),
                  // );
                  // return ;
                  return SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView(
                      shrinkWrap: true,
                      children:
                          snapshot.data!.docs.map((DocumentSnapshot document) {
                        Map<String, dynamic> data =
                            document.data()! as Map<String, dynamic>;
                        // return ListTile(
                        //   title: Text(data.toString()),
                        //   // subtitle: Text(data['company']),
                        // );
                        return data != null
                            ? data['perStatus'] == "Here to Hire"
                                ? Talent()
                                : Jobs()
                            : Container();
                      }).toList(),
                    ),
                  );               
                })));
  }
}
