import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truelancer_clone/commons/buttons.dart';

class SearchTalent extends StatefulWidget {
  const SearchTalent({super.key});

  @override
  State<SearchTalent> createState() => _SearchTalentState();
}

class _SearchTalentState extends State<SearchTalent> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
            elevation: 1,
            // leadingWidth: MediaQuery.of(context).size.width,
            // primary: ,
            title: SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              child: const TextField(
                // obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: Color.fromRGBO(20, 168, 0, 1.0),
                  ),
                  // suffixIconColor: Colors.red,
                  // suffix: Container(color: Color.fromRGBO(20, 168, 0, 1.0),),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(20, 168, 0, 1.0))),
                  // focusedBorder: MaterialStateProperty.all(Colors.amber),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromRGBO(20, 168, 0, 1.0))),
                  // labelText: 'Password',
                  hintText: 'Search',
                  // focusColor: Colors.black54
                ),
              ),
            ),
            centerTitle: true,
            toolbarHeight: 75,
          ),
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
          body: GridView.builder(
              // physics: const BouncingScrollPhysics(),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              // shrinkWrap: true,
              // itemCount: _items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 10.4 / 7.5,
                crossAxisCount: 1,
              ),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(5),
                    child: InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => AddDetails(
                          //           photo_url: snapshot.data!.docs[index]['data']['pro_photo'],
                          //           profile_name: snapshot.data!.docs[index]['data']['pro_name'],
                          //           details: snapshot.data!.docs[index]['data']['details'] as Map,
                          //               des: snapshot.data!.docs[index]['data']['description'].toString(),
                          //               imageUrl: snapshot.data!.docs[index]['images'][0].toString(),
                          //               price: snapshot.data!.docs[index]['data']['price'].toString(),
                          //               slides: snapshot.data!.docs[index]['images'],
                          //               title: snapshot.data!.docs[index]['data']['ad-title'].toString(),
                          //               category: snapshot.data!.docs[index]['data']['category'].toString(),
                          //             )));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: FirebaseAuth.instance.currentUser !=
                                            null
                                        ? Image.network(
                                            FirebaseAuth
                                                .instance.currentUser!.photoURL
                                                .toString(),
                                            height: 70.0,
                                            width: 70.0,
                                            // color: Colors.red,
                                          )
                                        : Container(),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 18),
                                      child: Text(
                                        "Ammar Mohib",
                                        style: GoogleFonts.acme(
                                            color: Color.fromRGBO(
                                                69, 168, 72, 1.0),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                        // style: TextStyle(
                                        // color: Color.fromRGBO(
                                        //     69, 168, 72, 1.0),
                                        // fontSize: 18,
                                        // fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 5),
                                      child: Text(
                                        "Front/back-end developer",
                                        style: GoogleFonts.ubuntu(
                                            color:
                                                Color.fromARGB(255, 51, 51, 51),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                        // style: TextStyle(
                                        // color:
                                        //     Color.fromARGB(255, 51, 51, 51),
                                        // fontSize: 18,ٖ
                                        // fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text("\$65",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17)),
                                const Text(
                                  " /hr",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 92, 88, 88),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                ),
                                const Text("\$100+",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17)),
                                const Text(
                                  " earned",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 92, 88, 88),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 40,
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 5),
                              child: Text(
                                "I am a professional Front/Back-end mobile developer, with working in the top market technology flutter. As you know that flutter",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                // style: TextStyle(
                                //   color: Color.fromRGBO(65, 65, 65, 1.0),
                                //   fontSize: 16.4,
                                //   // fontWeight: FontWeight.w500
                                // ),
                                style: GoogleFonts.poppins(
                                    color:
                                        const Color.fromRGBO(65, 65, 65, 1.0),
                                    fontSize: 15),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                SizedBox(width: 20,),
                             Text("Flutter", style: GoogleFonts.aBeeZee(color: Color.fromRGBO(82, 82, 82, 1.0), fontSize: 18),),
                             Text(" • Dart", style: GoogleFonts.aBeeZee(color: Color.fromRGBO(82, 82, 82, 1.0), fontSize: 18),),  
                             Text(" • Firebase", style: GoogleFonts.aBeeZee(color: Color.fromRGBO(82, 82, 82, 1.0), fontSize: 18),),  
                             Text(" • 8 more", style: GoogleFonts.aBeeZee(color: Color.fromRGBO(82, 82, 82, 1.0), fontSize: 18, fontWeight: FontWeight.w600),),  
                              ],                              
                            ),
                            SizedBox(height: 20,),
                             Center(child: JobButton(onTap: () {}, text: "Invite to Job"))
                          ],
                        )),
                  )),
        ));
  }
}
