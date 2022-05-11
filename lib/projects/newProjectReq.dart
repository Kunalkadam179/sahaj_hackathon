import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahaj_hackathon/modals/college.dart';
import 'package:sahaj_hackathon/modals/company.dart';

class NewProjectRequirements extends StatefulWidget {

  static String id='newProjectRequirement';

  @override
  State<NewProjectRequirements> createState() => _NewProjectRequirementsState();

}

class _NewProjectRequirementsState extends State<NewProjectRequirements>{
  String problemStatement="";
  String description="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Project Information'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              minLines: 6,
              maxLines: 12,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: 'Statement',
                hintStyle: TextStyle(
                    color: Colors.grey
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
              onChanged: (value)async{
                problemStatement=value.toString();
              },
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              minLines: 6,
              maxLines: 12,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: 'Description',
                hintStyle: TextStyle(
                    color: Colors.grey
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
              onChanged: (value)async{
                description=value.toString();
              },
            ),
          ),
          SizedBox(height: 10,),
          FlatButton(
              onPressed: (){

              },
              child: Text('Upload')
          )
        ],
      ),
    );
  }
}
