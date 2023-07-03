import 'dart:convert';
import 'package:apis/model/homemodel.dart';
import 'package:http/http.dart' as http;

// getController() async {
//   var url = "https:jsonplaceholder.typicode.com/users";
//   var urlUpdate = Uri.parse(url);
//   var res = await http.get(urlUpdate);
//   var response = jsonDecode(res.body);
//   print(response);
//   return response;
// }

getUserController() async {
  var item;
  var userData = [];
 
  var url = "https:jsonplaceholder.typicode.com/users";
  var urlUpdate = Uri.parse(url);
  var res = await http.get(urlUpdate);
  var response = jsonDecode(res.body);

for (item in response){
  userData.add(user.fromJson(item));

}
  // print(response);
  return userData;
}

