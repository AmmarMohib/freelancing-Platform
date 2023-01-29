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
                  // return DefaultTabController(
                  //   length: 3,
                  //   child: MaterialApp(
                  //     home: Scaffold(
                  //       appBar: AppBar(
                  //         toolbarHeight: 70,
                  //         // leading: SizedBox(
                  //         //                 width: 30,
                  //         //                 height: 20,
                  //         //                 child: CircleAvatar(
                  //         //                   backgroundColor: Colors.white,
                  //         //                   child: ClipRRect(
                  //         //                     borderRadius: BorderRadius.circular(50.0),
                  //         //                     child: Image.network(
                  //         //                       FirebaseAuth.instance.currentUser!.photoURL
                  //         //                           .toString(),
                  //         //                       // height: 350.0,
                  //         //                       // width: 300.0,
                  //         //                     ),
                  //         //                   ),
                  //         //                 ),
                  //         //               ),
                  //         leadingWidth: 50,
                  //         leading: Row(
                  //           children: [
                  //             SizedBox(
                  //               width: 10,
                  //             ),
                  //             ClipRRect(
                  //               borderRadius: BorderRadius.circular(50.0),
                  //               child: FirebaseAuth.instance.currentUser != null
                  //                   ? Image.network(
                  //                       FirebaseAuth.instance.currentUser!.photoURL
                  //                           .toString(),
                  //                       height: 40.0,
                  //                       width: 40.0,
                  //                       // color: Colors.red,
                  //                     )
                  //                   : Container(),
                  //             ),
                  //           ],
                  //         ),
                  //         // leading: CircleAvatar(
                  //         //     backgroundImage: Image.network(
                  //         //         FirebaseAuth.instance.currentUser!.photoURL.toString()) ),
                  //         backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
                  //         elevation: 0,
                  //         centerTitle: true,
                  //         title: Text(
                  //           "Talent",
                  //           style: TextStyle(
                  //             color: Color.fromRGBO(36, 36, 36, 1.0),
                  //           ),
                  //           // style: Googl,
                  //         ),
                  //         bottom: TabBar(
                  //           labelColor: Color.fromRGBO(20, 168, 0, 1.0),
                  //           overlayColor:
                  //               MaterialStateProperty.all(Color.fromARGB(51, 125, 184, 134)),
                  //           indicatorColor: Color.fromRGBO(20, 168, 0, 1.0),
                  //           unselectedLabelColor: Color.fromRGBO(36, 36, 36, 1.0),
                  //           // indicatorSize: TabBarIndicatorSize.,
                  //           indicatorWeight: 4,
                  //           tabs: [
                  //             Tab(
                  //                 icon: Text(
                  //               "Search",
                  //               style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  //             )),
                  //             Tab(
                  //                 icon: Text(
                  //               "Hires",
                  //               style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  //             )),
                  //             Tab(
                  //                 icon: Text(
                  //               "Saved",
                  //               style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  //             )),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // );
                })));
  }
}
