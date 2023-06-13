import 'package:flutter/material.dart';
import 'package:truelancer_clone/commons/buttons.dart';

class ProjectTitle extends StatefulWidget {
  @override
  _ProjectTitleState createState() => _ProjectTitleState();
}

class _ProjectTitleState extends State<ProjectTitle> {
  int _selectedOption = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Post Job"),
            backgroundColor: const Color.fromRGBO(20, 168, 0, 1.0),
            elevation: 0,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 50,
                ),
                child: Text("Write a title for your job post",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(0, 85, 80, 1.0),
                        fontWeight: FontWeight.w500)),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: const TextField(
                    // obscureText: true,
                    decoration: InputDecoration(
                      // suffixIconColor: Colors.red,
                      // suffix: Container(color: Color.fromRGBO(20, 168, 0, 1.0),),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(20, 168, 0, 1.0))),
                      // focusedBorder: MaterialStateProperty.all(Colors.amber),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromRGBO(20, 168, 0, 1.0))),
                      // labelText: 'Password',
                      hintText: 'Title',
                      // focusColor: Colors.black54
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 20,
                ),
                child: Text("Job category",
                    style: TextStyle(
                        fontSize: 17,
                        color: Color.fromRGBO(0, 85, 80, 1.0),
                        fontWeight: FontWeight.w500)),
              ),
              RadioListTile(
                value: 0,
                groupValue: _selectedOption,
                onChanged: (newValue) {
                  setState(() {
                    _selectedOption = newValue!;
                  });
                },
                title: Text("Web Development"),
              ),
              RadioListTile(
                value: 1,
                groupValue: _selectedOption,
                onChanged: (newValue) {
                  setState(() {
                    _selectedOption = newValue!;
                  });
                },
                title: Text("Mobile Development"),
              ),
              RadioListTile(
                value: 2,
                groupValue: _selectedOption,
                onChanged: (newValue) {
                  setState(() {
                    _selectedOption = newValue!;
                  });
                },
                title: Text("Full Stack Development"),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.41),
                    child: PostButton(onTap: () {}, text: "Back", green: false),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.02),
                    child: PostButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProjectSkills()));
                        },
                        text: "Next: Skills",
                        green: true),
                  )
                ],
              ),
            ],
          )),
    );
  }
}

class ProjectSkills extends StatefulWidget {
  const ProjectSkills({super.key});

  @override
  State<ProjectSkills> createState() => _ProjectSkillsState();
}

class _ProjectSkillsState extends State<ProjectSkills> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ,
      ),
    );
  }
}
