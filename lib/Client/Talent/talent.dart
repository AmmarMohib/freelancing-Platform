import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:truelancer_clone/Client/Talent/Hires.dart';
// import 'package:truelancer_clone/Client/C++/Hires.dart';
import 'package:truelancer_clone/Client/Talent/saved.dart';
import 'package:truelancer_clone/Client/Talent/search.dart';

class Talent extends StatefulWidget {
  const Talent({super.key});

  @override
  State<Talent> createState() => _TalentState();
}

class _TalentState extends State<Talent> {
  @override
  Widget build(BuildContext context) {
    
    // return Text('data');
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      child: DefaultTabController(
        length: 3,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 50,
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
              leading: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
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
                ],
              ),
              // leading: CircleAvatar(
              //     backgroundImage: Image.network(
              //         FirebaseAuth.instance.currentUser!.photoURL.toString()) ),
              backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
              elevation: 1,
              centerTitle: true,
              title: const Text(
                "Talent",
                style: TextStyle(
                  color: Color.fromRGBO(36, 36, 36, 1.0),
                ),
                // style: Googl,
              ),
              bottom: TabBar(
                labelColor: const Color.fromRGBO(20, 168, 0, 1.0),
                overlayColor:
                    MaterialStateProperty.all(const Color.fromARGB(51, 125, 184, 134)),
                indicatorColor: const Color.fromRGBO(20, 168, 0, 1.0),
                unselectedLabelColor: const Color.fromRGBO(36, 36, 36, 1.0),
                // indicatorSize: TabBarIndicatorSize.,
                indicatorWeight: 4,
                tabs: [
                  const Tab(
                      icon: Text(
                    "Search",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  )),
                  const Tab(
                      icon: Text(
                    "Hires",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  )),
                  const Tab(
                      icon: Text(
                    "Saved",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  )),
                ],
              ),
            ),
            body: const TabBarView(  
            children: [  
              SearchTalent(),
              Hires(),
              SavedTalent(),
              
            ],  
          ),  
          ),
        ),
      ),
    );
  }
}
