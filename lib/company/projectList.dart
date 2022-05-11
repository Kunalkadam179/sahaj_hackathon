import 'package:flutter/material.dart';

class ProjectList extends StatefulWidget {
  const ProjectList({Key? key}) : super(key: key);

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
            print('IconButton pressed ...');
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
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index){
              return Card(
                shadowColor: Colors.blue,
                color: Colors.green,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      onTap: () {
                        print('On Tap Function');
                      },
                      leading: Icon(Icons.album),
                      title: Text('Project Name'),
                      // subtitle: Text('Sorted according to status'),
                    ),
                    SizedBox(height: 40,)
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
