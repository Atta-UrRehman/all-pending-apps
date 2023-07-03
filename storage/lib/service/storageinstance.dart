import '../constants/constants.dart';

class StorageIns {
  static addData(String data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(KeyConstants.UserData, data);
  }

  static getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(KeyConstants.UserData);
  }
}
