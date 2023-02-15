import 'package:shared_preferences/shared_preferences.dart';

class AuthService{
  late SharedPreferences prefs;

  // To save token
  Future<bool> saveToken(String token) async {
    prefs = await SharedPreferences.getInstance();
    return prefs.setString('token', token);
  }

  // To save token
  Future<String?> getToken() async {
    prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }
}