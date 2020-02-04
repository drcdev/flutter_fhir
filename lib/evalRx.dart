import 'package:flutter/material.dart';
import 'package:flutter_fhir/class/patient.dart';
import 'package:flutter_fhir/buttons.dart';
import 'package:flutter_fhir/mainMenu.dart';
import 'package:flutter_fhir/parasite.dart';
import 'package:flutter_fhir/vaccine.dart';
import 'package:flutter/cupertino.dart';

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

  //check if a patient has been passed or selected
  //if so, display only that patient
  //add listener to allow patient search
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

  //get a list of all patients on this device
  Future _getList() async {
    List<Patient> list = await readPtList();
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
              ActionPageButton('images/parasite.png', 'Antiparasite Campaign', Parasite(pt: pt), pt),
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
            //read the list of patients on the device, and create a scrollable,
            // searchable list for provider
            child: FutureBuilder(
              future: readPtList(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data.length, //# of patients
                    itemBuilder: (context, index) {
                      String name = snapshot.data[index].printName(); //pt name
                      String id = snapshot.data[index].id; //pt id
                      return search == null || search == '' ? new Card(
                        color: Colors.blueGrey,
                        child: ListTile(
                          title: Text(name,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          //allows selection of single patient from list
                          onLongPress: () async {
                            pt = await readPatient(id);
                            setState(() => searchPt.text = name);
                          },
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