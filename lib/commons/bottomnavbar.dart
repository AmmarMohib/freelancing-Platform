// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  String location_name = 'Pakistan';

  @override
  Widget build(BuildContext context) {
    double resWidth = MediaQuery.of(context).size.width * 0.85;
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(
        height: 75,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: [
                IconButton(
                  iconSize: 30.0,
                  padding: const EdgeInsets.only(left: 28.0),
                  icon: const Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 71, 67, 67),
                  ),
                  onPressed: () {
                    //                Navigator.push(
                    // context, MaterialPageRoute(builder: (context) => const HomePage()));
                    // setState(() {
                    //   _myPage.jumpToPage(0);
                    // });
                  },
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 27.0),
                    child: Text(
                      "Talent",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 71, 67, 67),
                          fontWeight: FontWeight.w500),
                    ))
              ],
            ),
            Column(
              children: [
                IconButton(
                  iconSize: 30.0,
                  padding: const EdgeInsets.only(left: 0.0),
                  icon: const Icon(
                    CupertinoIcons.doc_on_doc,
                    color: Color.fromARGB(255, 71, 67, 67),
                  ),
                  onPressed: () {
                    //                                          Navigator.push(
                    // context, MaterialPageRoute(builder: (context) => const Chats()));
                    // setState(() {
                    //   _myPage.jumpToPage(0);
                    // });
                  },
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 0.0, right: 0),
                    child: Text(
                      "Catalog",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 71, 67, 67),
                          fontWeight: FontWeight.w500),
                    ))
              ],
            ),
            // const Padding(
            //   padding: EdgeInsets.only(top: 30, left: 15),
            //   child: Text("sell",
            //       style: TextStyle(
            //           color: Color.fromRGBO(0, 47, 52, 1.0),
            //           fontWeight: FontWeight.w600,
            //           fontSize: 20)),
            // ),
            Column(
              children: [
                IconButton(
                  iconSize: 30.0,
                  padding: const EdgeInsets.only(left: 0.0),
                  icon: const Icon(
                    Icons.work_outline_outlined,
                    color: Color.fromARGB(255, 71, 67, 67),
                  ),
                  onPressed: () {
                    // setState(() {
                    //   _myPage.jumpToPage(0);
                    // });
                    //                Navigator.push(
                    // context, MaterialPageRoute(builder: (context) => const MyAds()));
                  },
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 0.0),
                    child: Text(
                      "Jobs",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 71, 67, 67),
                          fontWeight: FontWeight.w500),
                    ))
              ],
            ),
            Column(
              children: [
                IconButton(
                  iconSize: 30.0,
                  padding: const EdgeInsets.only(left: 0.0),
                  icon: const Icon(
                    Icons.message_outlined,
                    color: Color.fromARGB(255, 71, 67, 67),
                  ),
                  onPressed: () {
                    // setState(() {
                    //   _myPage.jumpToPage(0);
                    // });
                    //  Navigator.push(
                    // context, MaterialPageRoute(builder: (context) => const AccountPage()));
                  },
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 0.0),
                    child: Text(
                      "Messages",
                      style: TextStyle(
                          color: Color.fromARGB(255, 71, 67, 67),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            ),
            Column(
              children: [
                IconButton(
                  iconSize: 30.0,
                  padding: const EdgeInsets.only(left: 0.0, right: 20),
                  icon: const Icon(
                    Icons.notifications_outlined,
                    color: Color.fromARGB(255, 71, 67, 67),
                  ),
                  onPressed: () {
                    // setState(()
                    // {
                    //   _myPage.jumpToPage(0);
                    // });
                    //  Navigator.push(
                    // context, MaterialPageRoute(builder: (context) => const AccountPage()));
                  },
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 0.0, right: 20),
                    child: Text(
                      "Alerts",
                      style: TextStyle(
                          color: Color.fromARGB(255, 71, 67, 67),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
