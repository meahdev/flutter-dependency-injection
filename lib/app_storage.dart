
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';


class AppStorage {
  SharedPreferences? _prefs;

  AppStorage._private();

  static final _instance = AppStorage._private();

  factory AppStorage() {
    return _instance;
  }

  init() async {
    _prefs = await SharedPreferences.getInstance();
  }
}