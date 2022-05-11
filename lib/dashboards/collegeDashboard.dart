import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahaj_hackathon/profiles/collegeProfile.dart';

class CollegeDashboard extends StatefulWidget {
  const CollegeDashboard({Key? key}) : super(key: key);
  static String id='college_dashboard';
  @override
  State<CollegeDashboard> createState() => _CollegeDashboardState();
}

class _CollegeDashboardState extends State<CollegeDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("College Name",),
        actions: [
          FlatButton(
            child: Icon(
                Icons.account_circle
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CollegeProfile()));
            },
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              Card(

                borderOnForeground: true,
                shadowColor: Colors.blue,
                color: Colors.lightGreen,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Students List'),
                      subtitle: Text('colored according to status'),
                    ),
                    SizedBox(height: 40,)
                  ],
                ),
              ),
            Card(
              shadowColor: Colors.blue,
              color: Colors.lightGreen,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('Project List'),
                    subtitle: Text('Sorted according to status'),
                  ),
                  SizedBox(height: 40,)
                ],
              ),
            ),
            Card(

              shadowColor: Colors.blue,
              color: Colors.lightGreen,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('Company List'),
                  ),
                  SizedBox(height: 50,)
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}
