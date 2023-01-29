import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truelancer_clone/Home/home.dart';
import 'package:truelancer_clone/commons/buttons.dart';
import 'package:truelancer_clone/login/login.dart';
import 'package:truelancer_clone/services/signup/google_signup.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/wombackwork.png'),
                  colorFilter: const ColorFilter.mode(
                      Color.fromRGBO(43, 43, 43, 1.0), BlendMode.color),
                  fit: BoxFit.cover)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(47, 47, 47, 1.0).withOpacity(0)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png'),
                    const SizedBox(
                      height: 100,
                    ),
                    SignUpButton(
                        imageUrl: 'assets/images/google_logo.png',
                        // onTap: () => print("object"),
                        onTap: () {
                          signup(context);
                          // print("object");
                        },
                        text: 'Signup with Google'),
                    const SizedBox(
                      height: 10,
                    ),
                    SignUpButton(
                        imageUrl: 'assets/images/facebook_logo.png',
                        onTap: () {},
                        text: 'Signup with Facebook'),
                    const SizedBox(
                      height: 10,
                    ),
                    SignUpButton(
                        imageUrl: 'assets/images/email_logo.png',
                        onTap: () {},
                        text: 'Signup with Email'),
                    const SizedBox(
                      height: 230,
                    ),
                    InkWell(
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        }),
                        child: const Text(
                          "Already have an account? Login Here",
                          style: TextStyle(
                              color: Color.fromARGB(255, 238, 226, 226),
                              fontSize: 19),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "By Signing up you agree to our \n       Terms and Conditions",
                      style: TextStyle(
                          color: Color.fromARGB(255, 238, 226, 226),
                          fontSize: 12),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Privacy Policy",
                      style: TextStyle(
                          color: Color.fromARGB(255, 238, 226, 226),
                          fontSize: 12),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class PhoneNumVer extends StatefulWidget {
  const PhoneNumVer({super.key});

  @override
  State<PhoneNumVer> createState() => _PhoneNumVerState();
}

class _PhoneNumVerState extends State<PhoneNumVer> {
  var country_name = "";
  var flag = "";
  String dropdownvalue = 'You are here as';
  var itemss = ['You are here as', 'As Freelancer', 'Here to Hire'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Demo for country picker package',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      // ignore: prefer_const_literals_to_create_immutables
      supportedLocales: [
        const Locale('en'),
        const Locale('ar'),
        const Locale('es'),
        const Locale('de'),
        const Locale('fr'),
        const Locale('el'),
        const Locale('et'),
        const Locale('nb'),
        const Locale('nn'),
        const Locale('pl'),
        const Locale('pt'),
        const Locale('ru'),
        const Locale('hi'),
        const Locale('ne'),
        const Locale('uk'),
        const Locale('hr'),
        const Locale('tr'),
        const Locale('lv'),
        const Locale('lt'),
        const Locale('ku'),
        const Locale('nl'),
        const Locale.fromSubtags(
            languageCode: 'zh',
            scriptCode: 'Hans'), // Generic Simplified Chinese 'zh_Hans'
        const Locale.fromSubtags(
            languageCode: 'zh',
            scriptCode: 'Hant'), // Generic traditional Chinese 'zh_Hant'
      ],
      localizationsDelegates: [
        CountryLocalizations.delegate,
        // GlobalMaterialLocalizations.delegate,
        // GlobalCupertinoLocalizations.delegate,
        // GlobalWidgetsLocalizations.delegate,
      ],
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/wombackwork.png'),
                  colorFilter: const ColorFilter.mode(
                      Color.fromRGBO(43, 43, 43, 1.0), BlendMode.color),
                  fit: BoxFit.cover)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(47, 47, 47, 1.0).withOpacity(0)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png'),
                    const SizedBox(
                      height: 150,
                    ),
                    SignUpButton(
                        imageUrl: 'assets/images/down_arrow.png',
                        // onTap: () => print("object"),
                        onTap: () {
                          showCountryPicker(
                              context: context,
                              //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                              exclude: <String>['KN', 'MF'],
                              favorite: <String>['SE'],
                              //Optional. Shows phone code before the country name.
                              showPhoneCode: true,
                              onSelect: (Country country) {
                                print('Select country: ${country.name}');
                                setState(() {
                                  country_name = country.name.toString();
                                  flag = country.flagEmoji;
                                });
                              },
                              // Optional. Sets the theme for the country list picker.
                              countryListTheme: CountryListThemeData(
                                // Optional. Sets the border radius for the bottomsheet.
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(40.0),
                                  topRight: Radius.circular(40.0),
                                ),
                                // Optional. Styles the search field.
                                inputDecoration: InputDecoration(
                                  labelText: 'Search',
                                  hintText: 'Start typing to search',
                                  prefixIcon: const Icon(Icons.search),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: const Color(0xFF8C98A8)
                                          .withOpacity(0.2),
                                    ),
                                  ),
                                ),
                                // Optional. Styles the text in the search field
                                searchTextStyle: const TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                ),
                              ));
                          // print("object");
                        },
                        text: 'Select a country'),

                    // const SizedBox(
                    //   height: 100,
                    // ),
                    // Text(country_name! ?? null),
                    SizedBox(height: 50,),
                    country_name != ""
                        ? Text(
                            "selected country is : " + country_name,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                          )
                        : Container(),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            // width: MediaQuery.of(context).size.width * 0.8,
                            child: DropdownButton(
                              // Initial Value
                              value: dropdownvalue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: itemss.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Center(
                                      child: Text(
                                    items,
                                    style: GoogleFonts.acme(
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic),
                                  )),
                                );
                              }).toList(),
                              onTap: (() {
                                setState(() {});
                              }),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    SignUpButton(
                        imageUrl: 'assets/images/next_arrow.png',
                        // onTap: () => print("object"),
                        onTap: () {
                          if (dropdownvalue == "As a Freelancer" &&
                              country_name != "") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => jobSelPage(
                                        selcountry: country_name,
                                        flag: flag,
                                        perStatus: dropdownvalue)));
                          } else if (dropdownvalue == "Here to Hire" &&
                              country_name != "") {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => jobSelPage(
                            //             selcountry: country_name,
                            //             flag: flag,
                            //             perStatus: dropdownvalue)));
                            var authInstance = FirebaseAuth.instance;
                          CollectionReference<Map<String, dynamic>>
                              collectionStream = FirebaseFirestore.instance
                                  .collection('users')
                                  .doc(authInstance.currentUser?.uid)
                                  .collection('UserDetails');
                          collectionStream.add({
                            "Country Name": country_name,
                            "Country Flag": flag,
                            "perStatus": dropdownvalue
                            // "Job Title": JobTitle,
                            // "Job Sub-Title": JobSubTitle,
                          }).whenComplete(() => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage())));
                          }
                          // print("object");
                        },
                        text: dropdownvalue == "Here to Hire" ? "Done" : 'Next'),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class jobSelPage extends StatefulWidget {
  final selcountry;
  final flag;
  final perStatus;
  const jobSelPage({super.key, this.selcountry, this.flag, this.perStatus});

  @override
  State<jobSelPage> createState() => _jobSelState();
}

class _jobSelState extends State<jobSelPage> {
  String JobTitle = "";
  String JobSubTitle = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/wombackwork.png'),
                  colorFilter: const ColorFilter.mode(
                      Color.fromRGBO(43, 43, 43, 1.0), BlendMode.color),
                  fit: BoxFit.cover)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(47, 47, 47, 1.0).withOpacity(0)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png'),
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      "Write the name of your job ex: Graphic Designing",
                      // style: TextStyle(color: Colors.white, fontSize: 15)
                      style: GoogleFonts.acme(color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            JobTitle = value;
                          });
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          // labelText: 'User Name',
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'Job Title',
                        ),
                      ),
                    ),
                    Text("Write the name of your sub-job ex: video-editing",
                        style: GoogleFonts.acme(color: Colors.white)),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            JobSubTitle = value;
                          });
                        },
                        // obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          // labelText: 'Password',
                          // hintStyle: TextStyle(color: Colors.white),
                          hintText: 'Job Sub Title',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    SignUpButton(
                        imageUrl: 'assets/images/next_arrow.png',
                        // onTap: () => print("object"),
                        onTap: () {
                          var authInstance = FirebaseAuth.instance;
                          CollectionReference<Map<String, dynamic>>
                              collectionStream = FirebaseFirestore.instance
                                  .collection('users')
                                  .doc(authInstance.currentUser!.uid)
                                  .collection('UserDetails');
                          collectionStream.add({
                            "Country Name": widget.selcountry,
                            "Country Flag": widget.flag,
                            "Job Title": JobTitle,
                            "Job Sub-Title": JobSubTitle,
                            "perStatus": widget.perStatus
                          }).whenComplete(() => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage())));
                          // Navigator.push(
                          // context,
                          // MaterialPageRoute(
                          // builder: (context) => jobSelPage(
                          // selcountry: country_name, flag: flag)));
                          // print("object");
                        },
                        text: 'Done'),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
