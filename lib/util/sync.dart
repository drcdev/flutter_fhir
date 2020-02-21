import 'package:flutter/cupertino.dart';
import 'package:flutter_fhir/fhirClasses/location.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/util/user.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_fhir/fhirClasses/bundle.dart';

sync(String action, {String resourceType, List<dynamic> resourceList}) async {
  Map<String, String> headers = {'Content-type': 'application/json'};

  var fhirDb = DatabaseHelper();

  //Obtain authorization token
  String name = 'faulkenbej@chop.edu';
  String secret = 'chopchop';
  String clientSecret = 'chopchop';
  String server = 'https://choptestpatients.aidbox.app';
//  String server = 'https://dbhifhir.aidbox.app';

  Response response = await post(
      '$server/auth/token?client_id=greyfhir&grant_type=password&username=$name&password=$secret&client_secret=$clientSecret',
      headers: headers);
  if (response.statusCode == 200) {
    var parsedbody = json.decode(response.body);
    var token = parsedbody['token_type'] + ' ' + parsedbody['access_token'];
    parsedbody['token_type'] + ' ' + parsedbody['access_token'];
    headers.putIfAbsent("Authorization", () => token);
  } else {
    return ('Error, Status Code: ${response.statusCode.toString()}');
  }

  switch (action) {
    case 'get':
      var entity = Model();
      castToEntity(entity, {'test': 10});

      print(entity.test);
      break;
    case 'put':
        int page = 1;
        while (true) {
//          Response response = await get(
//              '$server/Patient?page=${page.toString()}',
//              headers: headers);
//          var myBundle = Bundle.fromJson(json.decode(response.body));
//          if (myBundle.entry.length == 0) {
//            break;
//          }
//          page += 1;
//          for (int i = 0; i < myBundle.entry.length; i++) {
//            ResourceTypes(myBundle.entry[i].resource.resourceType,
//                    myBundle.entry[i].resource.toJson())
//                .save();
//          }
//        }
        Bundle sendBundle = await Bundle.newInstance(
            type: 'transaction', entry: [await Bundle_Entry.newInstance()]);
        List classes = [
          'Patient',
          'Location',
          'Encounter',
          'Composition',
          'MedicationAdministration'
        ];
        Server serverUpdated = await fhirDb.lastServerUpdate(server);
        for (int i = 0; i < classes.length; i++) {
          var lister = await fhirDb.getList(classes[i]);
          for (int j = 0; j < lister.length; j++) {
            if (lister[j]
                .meta
                .lastUpdated
                .isAfter(DateTime.parse(serverUpdated.lastUpdated))) {
              sendBundle.entry.add(Bundle_Entry(
                  resource: lister[j].toJson(),
                  request: Bundle_Request(
                      method: 'PUT',
                      url: '${lister[j].resourceType}/${lister[j].id}')));
            }
          }
        }

        print(jsonEncode(sendBundle));
        for(int k = 0; k < sendBundle.entry.length; k++) {
          print(jsonEncode(sendBundle.entry[k]));
        }
        serverUpdated.lastUpdated = DateTime.now().toString();
        fhirDb.saveServerUpdate(serverUpdated);

        var noIdea = await post('$server/fhir',
            headers: headers, body: jsonEncode(sendBundle).toString());
        print(noIdea.headers.toString());
        print(noIdea.body.toString());
      }
    break;
    case 'post':
      {}
      break;
  }
}

abstract class Serializable {
  void fromJson(Map<String, dynamic> data);
}

class Model implements Serializable {

  int test;
  @override
  void fromJson(data) {
    test = data['test'];
  }
}

Serializable castToEntity(Serializable entity, Map<String, dynamic> data) {
  return entity..fromJson(data);
}
