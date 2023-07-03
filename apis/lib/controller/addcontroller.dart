import 'dart:convert';
//import 'dart:js_interop';
//import 'package:apis/model/homemodel.dart';
import 'package:http/http.dart' as http;

addUserController(data) async {
  var url = "https:jsonplaceholder.typicode.com/posts";
  var addUrl = Uri.parse(url);
  final response = await http.post(addUrl,
      body: jsonEncode(data), headers: {"content-type": "application/json"});

  print(response.body);
  return response;
}
