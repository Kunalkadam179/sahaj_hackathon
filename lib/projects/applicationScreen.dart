import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectApplication extends StatefulWidget {

  static String id="projectApplication";

  const ProjectApplication({Key? key}) : super(key: key);

  @override
  State<ProjectApplication> createState() => _ProjectApplicationState();
}

class _ProjectApplicationState extends State<ProjectApplication> {

  String technologyStack="";
  List row = [];

  Future<void> _newItem(BuildContext context) async {
    String _prn = "";
    String _name = "";
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      border: const UnderlineInputBorder(),
                      labelText: 'Enter PRN',
                    ),
                    onChanged: (value) {
                      _prn = value;
                      // return _prn;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter Name',
                    ),
                    onChanged: (value) {
                      _name = value;
                      // return _name;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        (_name != null)
                            ? row.add(RowElement(_prn, _name))
                            : null;
                      });
                      Navigator.pop(context);
                    },
                    child: const Text("ADD"),
                    style: ButtonStyle(
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.blueAccent)),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: const Text(
          'Application Screen',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: const Text(
                        'Project Title',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ColumnElement(title: 'Problem Statement', desc: 'Statement describing the Project'),
                          ColumnElement(title: 'Description', desc: 'Description of the Project',),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Text(
                              'Technical Stack',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.0,
                              ),
                            ),
                            TextFormField(
                              minLines: 6,
                              maxLines: 12,
                              keyboardType: TextInputType.multiline,
                              decoration: const InputDecoration(
                                hintText: 'Write technology Stack you will use',
                                hintStyle: TextStyle(
                                    color: Colors.grey
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(const Radius.circular(20.0)),
                                ),
                              ),
                              onChanged: (value)async{
                                technologyStack=value.toString();
                              },
                            ),
                          ]
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        children: [
                          const ListTile(
                            leading: const Text(
                              "PRN",
                              style: TextStyle(fontSize: 20),
                            ),
                            trailing: Text(
                              "Name",
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          Container(
                            // height: 300,
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: row.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    ListTile(
                                      leading: Text(row[index].prn),
                                      trailing: Text('${row[index].name}'),
                                      onLongPress: () {
                                        setState(() {
                                          row.remove(RowElement(row[index].name, row[index].prn));
                                        });
                                      },
                                    ),
                                    const Divider(
                                      thickness: 1,
                                    )
                                  ],
                                );
                              },
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              _newItem(context);
                            },
                            child: const Text("Add Member"),
                            style: ButtonStyle(
                              foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blueAccent),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: FlatButton(
        color: Colors.blue,
        child: Text(
          'Submit',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        onPressed: (){},
      ),
    );;
  }
}

class RowElement {
  String _name = "";
  String _prn = "";
  RowElement( String prn, String name) {
    _name = name;
    _prn = prn;
  }

  get name => _name;

  String get prn => _prn;

  Map<String, dynamic> toJson() {
    return {'prn': _prn , 'name': _name};
  }

  factory RowElement.fromJson(Map<String, dynamic> obj) {
    return RowElement(obj['_prn'] , obj['_name']);
  }
}
class ColumnElement extends StatelessWidget {

  ColumnElement({Key? key, required this.title,required this.desc}) : super(key: key);

  String title;
  String desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              child: Text(
                desc,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
