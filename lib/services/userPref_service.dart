import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

// import '../models/user_model.dart';

class UserPreference {
  SharedPreferences? _prefs;
  String userKey = "userKey";
  String securityKey = "securityKey";
  String logOutKey = "isLoggedOut";
  String newUser = "newUser";
  String accountCacheKey = "AccountsCacheKey";
  static final UserPreference _instance = UserPreference._();

  UserPreference._();

  factory UserPreference() => _instance;


  init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // UserModel getUser() {
  //   print(_prefs.getString(userKey));
  //   if (_prefs != null && _prefs.getString(userKey) != null) {
  //     print("user found");
  //     Map userMap = jsonDecode(_prefs.getString(userKey));
  //     return UserModel.fromMap(userMap);
  //   }
  //   return null;
  // }

  // Future<void> saveUser(UserModel user) async {
  //   try {
  //     bool isSaved = await _prefs.setString(userKey, jsonEncode(user.toMap()));
  //     print(_prefs.getString(userKey));
  //     print("User model saved $isSaved");
  //   } on Exception catch (e) {
  //     print(e);
  //   }
  // }
  //
  // void clearUserData() async {
  //   await _prefs.clear();
  // }
  //
  // bool checkIfNewUser() {
  //   bool isNewUser = _prefs.getBool(newUser);
  //   if (isNewUser != false) {
  //     _prefs.setBool(newUser, false);
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
}
