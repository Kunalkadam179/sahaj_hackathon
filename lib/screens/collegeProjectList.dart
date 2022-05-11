import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CollegeProjectList extends StatefulWidget {
  const CollegeProjectList({Key? key}) : super(key: key);

  @override
  State<CollegeProjectList> createState() => _CollegeProjectListState();
}

class _CollegeProjectListState extends State<CollegeProjectList> {

  Future<void>_func()async{
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _func,
        child: ListView.builder(
            itemBuilder:(BuildContext context,int index){
              return ListTile(
                title: Text('Project Title'),
                onTap: (){
                  // Navigator.push(context,MaterialPageRoute(builder: (context)=>ProjectDetails()));
                },
              );
            },
            itemCount: 10,
        )
      ),
    );
  }
}

