import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class Jobs extends StatefulWidget {
  const Jobs({super.key});

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            // leading: SizedBox(
            //                 width: 30,
            //                 height: 20,
            //                 child: CircleAvatar(
            //                   backgroundColor: Colors.white,
            //                   child: ClipRRect(
            //                     borderRadius: BorderRadius.circular(50.0),
            //                     child: Image.network(
            //                       FirebaseAuth.instance.currentUser!.photoURL
            //                           .toString(),
            //                       // height: 350.0,
            //                       // width: 300.0,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            leadingWidth: 50,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: FirebaseAuth.instance.currentUser != null
                  ? Image.network(
                      FirebaseAuth.instance.currentUser!.photoURL
                          .toString(),
                      height: 40.0,
                      width: 40.0,
                      // color: Colors.red,
                    )
                  : Container(),
            ),
            // leading: CircleAvatar(
            //     backgroundImage: Image.network(
            //         FirebaseAuth.instance.currentUser!.photoURL.toString()) ),
            backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
            elevation: 0,
            centerTitle: true,
            title: Text(
              "Talent",
              style: TextStyle(
                color: Color.fromRGBO(36, 36, 36, 1.0),
              ),
              // style: Googl,
            ),
            bottom: TabBar(
              labelColor: Color.fromRGBO(20, 168, 0, 1.0),
              overlayColor:
                  MaterialStateProperty.all(Color.fromARGB(51, 125, 184, 134)),
              indicatorColor: Color.fromRGBO(20, 168, 0, 1.0),
              unselectedLabelColor: Color.fromRGBO(36, 36, 36, 1.0),
              // indicatorSize: TabBarIndicatorSize.,
              indicatorWeight: 4,
              tabs: [
                Tab(
                    icon: Text(
                  "Search",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                )),
                Tab(
                    icon: Text(
                  "Hires",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                )),
                Tab(
                    icon: Text(
                  "Saved",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}