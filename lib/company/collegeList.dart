import 'package:flutter/material.dart';
import 'package:sahaj_hackathon/company/projectList.dart';

class CollegeList extends StatefulWidget {
  const CollegeList({Key? key}) : super(key: key);

  static String id='collegeList';

  @override
  State<CollegeList> createState() => _CollegeListState();
}

class _CollegeListState extends State<CollegeList> {
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
          'College List',
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
                return ListTile(
                  title: SizedBox(
                    height: 150,
                    child: Card(
                      shadowColor: Colors.blue,
                      color: Colors.green,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectList()));
                            },
                            leading: Icon(Icons.album),
                            title: Text('College Name'),
                            // subtitle: Text('Sorted according to status'),
                          ),
                          SizedBox(height: 40,)
                        ],
                      ),
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
