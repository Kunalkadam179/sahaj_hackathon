import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahaj_hackathon/screens/collegeProjectList.dart';

class CompanyProfile extends StatefulWidget {
  const CompanyProfile({Key? key}) : super(key: key);

  @override
  State<CompanyProfile> createState() => _CompanyProfileState();
}


class _CompanyProfileState extends State<CompanyProfile> {

  Future<void>_func()async{
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
          onRefresh: _func,
          child: ListView.builder(
            itemBuilder: (BuildContext context,int index){
              return Column(
                children: [
                  ListTile(
                      title:Text(
                          'Project name',
                          style: TextStyle(
                            fontSize: 22.0,
                          )
                      ),
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CollegeProjectList()));
                    },
                  ),
                  Divider(thickness: 3,)
                ],
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
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child:Image.asset('Images/college_image.jpeg')
            ),
            Text('College Name',style: TextStyle(color: Colors.grey,height: 2),),
            ListTile(
              title: const Text('location'),
              onTap: () {
                Navigator.pop(context);
              },
            ),ListTile(
              title: const Text('Ambassador'),
              onTap: () {
                Navigator.pop(context);
              },
            ),ListTile(
              title: const Text('contact'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Project List'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('College List'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
