import 'package:flutter/material.dart';


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
          backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
          elevation: 1,
          // leadingWidth: MediaQuery.of(context).size.width,
          // primary: ,
          title: TextField(  
            
                    // obscureText: true,  
                    decoration: InputDecoration(  
                      suffixIcon: Icon(Icons.search, color: Color.fromRGBO(20, 168, 0, 1.0),),
                      // suffixIconColor: Colors.red,
                      // suffix: Container(color: Color.fromRGBO(20, 168, 0, 1.0),),
                      border: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(20, 168, 0, 1.0))),  
                      // focusedBorder: MaterialStateProperty.all(Colors.amber),
                           focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 3, color: Color.fromRGBO(20, 168, 0, 1.0))),
                      // labelText: 'Password',  
                      hintText: 'Search',
                      // focusColor: Colors.black54

                    ),  
                  ),
                centerTitle: false,
                toolbarHeight: 75,
          // leading: TextField(  
          //           obscureText: true,  
          //           decoration: InputDecoration(  
          //             border: OutlineInputBorder(),  
          //             labelText: 'Password',  
          //             hintText: 'Enter Password',  
          //           ),  
          //         ),
//           actions: [
// TextField(  
//                     obscureText: true,  
//                     decoration: InputDecoration(  
//                       border: OutlineInputBorder(),  
//                       labelText: 'Password',  
//                       hintText: 'Enter Password',  
//                     ),  
//                   ),
//           ],
        ),
        // body: TextField(  
        //             obscureText: true,  
        //             decoration: InputDecoration(  
        //               border: OutlineInputBorder(),  
        //               labelText: 'Password',  
        //               hintText: 'Enter Password',  
        //             ),  
        //           ),
                     ),
    );
  }
}