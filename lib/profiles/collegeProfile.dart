import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CollegeProfile extends StatefulWidget {
  const CollegeProfile({Key? key}) : super(key: key);

  static String id='college_profile';
  @override
  State<CollegeProfile> createState() => _CollegeProfileState();
}


class _CollegeProfileState extends State<CollegeProfile> {

  int listType=0;

  Future<void>_func()async{
    listType=0;
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("College Profile")),
      body:RefreshIndicator(
          onRefresh: _func,
          child: ListView.builder(
            itemBuilder: (BuildContext context,int index){
              return ListTile(
                  title:Text(
                      'Project name',
                      style: TextStyle(
                        fontSize: 22.0,
                      )
                  )
              );
            },
            itemCount: 10,

          )
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('College Name'),
            ),
            ListTile(
              title: const Text('location'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Student List'),
              onTap: () {
                listType=1;
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('College List'),
              onTap: () {
                listType=2;
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Project List'),
              onTap: () {
                listType=3;
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

    );
  }
}