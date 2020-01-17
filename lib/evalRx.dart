import 'package:flutter/material.dart';
import 'package:flutter_fhir/class/patient.dart';
import 'package:flutter_fhir/main.dart';
import 'package:flutter_fhir/buttons.dart';
import 'package:flutter_fhir/parasite.dart';
import 'package:flutter_fhir/vaccine.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

class EvalRx extends StatelessWidget {
  Patient pt;
  EvalRx({this.pt});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pt != null ? _EvalRx(pt: pt) : _EvalRx(),
    );
  }
}

class _EvalRx extends StatefulWidget {
  Patient pt;
  _EvalRx({this.pt});
  @override
  _EvalRxState createState() => pt != null ? _EvalRxState(pt: pt) : _EvalRxState();
}

class _EvalRxState extends State<_EvalRx> {
  Patient pt;
  _EvalRxState({this.pt});
  List<Patient> patientList;
  var searchPt = new TextEditingController();
  String search;

  @override
  void initState() {
    super.initState();
    _getList();
    if(pt != null) {
      search = pt.printName();
      searchPt.text = search;
    }
    searchPt.addListener(() {
      setState(() {
        search = searchPt.text;
      });
    });
  }

  @override
  void dispose() {
    searchPt.dispose();
    super.dispose();
  }

  Future _getList() async {
    List<Patient> list = await ptList();
    setState(() {
      patientList = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Patient Activities"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PageButton('images/parasite.png', 'Antiparasite Campaign', Parasite()),
              PageButton('images/vaccine.png', 'Immunizations', Vaccine()),
            ],
          ),

          Padding( padding: const EdgeInsets.all(10.0), ),
          TextField(
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            decoration: InputDecoration(
              labelText: 'Search Patient Name',
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
              )
            ),
            controller: searchPt,
          ),

          Padding( padding: const EdgeInsets.all(5.0), ),
          Expanded(
            child: FutureBuilder(
              future: ptList(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return search == null || search == '' ? new Card(
                        color: Colors.blueGrey,
                        child: ListTile(
                          title: Text(snapshot.data[index].printName(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ) :
                      snapshot.data[index].printName().toLowerCase().contains(
                          search.toLowerCase()) ? new Card(
                        color: Colors.blueGrey,
                        child: ListTile(
                          title: Text(snapshot.data[index].printName(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ) : new Container();
                    },
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
          Padding( padding: const EdgeInsets.all(12.0), ),

          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainMenu()),
              );
            },
            child: Text('Return to Opening Page'),
          ),
        ],
      ),
    );
  }
}

Future<List<Patient>> ptList() async {
  final directory = await getApplicationDocumentsDirectory(); //get current directory
  List<String> ptNumbers = (await File('${directory.path}/ptList.txt').readAsString()).split('\n');
  var ptList = new List<Patient>();
  for(var i = 0; i < ptNumbers.length; i++){
    final pt = File('${directory.path}/' + ptNumbers[i] + '.txt');
    var newpt = Patient.fromJson(json.decode(await pt.readAsString()));
    ptList.add(newpt);
  }
  return ptList;
}