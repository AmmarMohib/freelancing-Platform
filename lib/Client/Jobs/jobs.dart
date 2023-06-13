import 'package:flutter/material.dart';
import 'package:truelancer_clone/Client/Jobs/create_jobs.dart';


class ClientJobs extends StatefulWidget {
  const ClientJobs({super.key});

  @override
  State<ClientJobs> createState() => _ClientJobsState();
}

class _ClientJobsState extends State<ClientJobs> {
    final List<String> jobTitles = [    'Web developer',    'Mobile developer',    'Graphic designer',    'Data analyst',    'Content writer'  ];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Client Jobs'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Show search bar
            },
          ),
        ],
        backgroundColor: Color.fromRGBO(0, 171, 37, 1.0)
      ),
      body: Container(
        child: ListView.builder(
          itemCount: jobTitles.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(jobTitles[index]),
                subtitle: Text('Proposals: 20'),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  // Navigate to job details page
                },
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectTitle(),));
          // Navigate to create job page
        },
      ),
    );
  }
}