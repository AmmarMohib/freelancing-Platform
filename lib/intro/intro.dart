import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:truelancer_clone/signup/signup.dart';

class IntroScreenDefault extends StatefulWidget {
  const IntroScreenDefault({Key? key}) : super(key: key);

  @override
  IntroScreenDefaultState createState() => IntroScreenDefaultState();
}

class IntroScreenDefaultState extends State<IntroScreenDefault> {
  List<ContentConfig> listContentConfig = [];

  @override
  void initState() {
    super.initState();

    listContentConfig.add(
      const ContentConfig(
        title: "Post a Project",
        styleTitle: TextStyle(fontSize: 25, color: Colors.white),
        description: "Posting a project is FREE",
        pathImage: "assets/images/postProject.png",
        // widthImage: 200
        // ,
        heightImage: 400,
        backgroundColor: Color.fromRGBO(218, 78, 37, 1.0),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "Be your own Boss",
        styleTitle: TextStyle(fontSize: 25, color: Colors.white),
        description: "GROW your bussiness at one place",
        pathImage: "assets/images/boss.png",
        // widthImage: 200
        // ,
        heightImage: 400,
        backgroundColor: Color.fromRGBO(233, 137, 30, 1.0),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "Hire Trusted Freelancers",
        styleTitle: TextStyle(fontSize: 25, color: Colors.white),
        description:
            "Truelancer is a On Demand Curated Freelance Marketplace cloned by M.Ammar",
        pathImage: "assets/images/trustdev.png",
        // widthImage: 200
        // ,
        heightImage: 400,
        backgroundColor: Color.fromRGBO(75, 75, 75, 1.0),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        // title: "Hire Trusted Freelancers",
        styleDescription: TextStyle(fontSize: 50, color: Colors.white),
        description:
            "Join the most Incredible Freelancing Platform cloned by M.Ammar",
        // pathImage: "assets/images/trustdev.png",
        // widthImage: 200
        // ,
        heightImage: 400,
        backgroundColor: Color.fromARGB(255, 99, 86, 151),
      ),
    );
    // listContentConfig.add(
    //   const ContentConfig(
    //     title: "PENCIL",
    //     description:
    //         "Ye indulgence unreserved connection alteration appearance",
    //     pathImage: "images/photo_pencil.png",
    //     backgroundColor: Color(0xff203152),
    //   ),
    // );
    // listContentConfig.add(
    //   const ContentConfig(
    //     title: "RULER",
    //     description:
    //         "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
    //     pathImage: "images/photo_ruler.png",
    //     backgroundColor: Color(0xff9932CC),
    //   ),
    // );
  }

  void onDonePress() {
    // log("End of slides");
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignUpPage()));
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: onDonePress,
      // isShowNextBtn: true,
      isShowDoneBtn: true,
    );
  }
}
