import 'package:flutter/material.dart';
import 'package:sahaj_hackathon/projects/applicationScreen.dart';
import 'package:sahaj_hackathon/projects/project_info.dart';

class ProjectList extends StatefulWidget {

  int type=0;

  ProjectList(this.type); //1==company  2==student

  static String id='projectList';

  @override
  State<ProjectList> createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Project List',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: 1000,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index){
                return SizedBox(
                  height: 104,
                  child: Card(
                    shadowColor: Colors.blue,
                    color: Colors.green,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectDetailsWidget()));
                          },
                          leading: Icon(Icons.album),
                          title: Text('Project Name'),
                          // subtitle: Text('Sorted according to status'),
                          trailing: FlatButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectApplication()));
                            },
                            child: Text(widget.type==1?'BUY':'APPLY',style: TextStyle(backgroundColor: Colors.blue),),
                          ),
                        ),
                        SizedBox(height: 40,)
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
