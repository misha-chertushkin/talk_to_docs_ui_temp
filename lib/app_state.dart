import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _navOpen = prefs.getBool('ff_navOpen') ?? _navOpen;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_googleLoginResponse')) {
        try {
          final serializedData =
              prefs.getString('ff_googleLoginResponse') ?? '{}';
          _googleLoginResponse = GoogleLoginResponseStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _projectID = prefs.getString('ff_projectID') ?? _projectID;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _navOpen = true;
  bool get navOpen => _navOpen;
  set navOpen(bool value) {
    _navOpen = value;
    prefs.setBool('ff_navOpen', value);
  }

  int _selectedMenu = 2;
  int get selectedMenu => _selectedMenu;
  set selectedMenu(int value) {
    _selectedMenu = value;
  }

  GoogleLoginResponseStruct _googleLoginResponse = GoogleLoginResponseStruct();
  GoogleLoginResponseStruct get googleLoginResponse => _googleLoginResponse;
  set googleLoginResponse(GoogleLoginResponseStruct value) {
    _googleLoginResponse = value;
    prefs.setString('ff_googleLoginResponse', value.serialize());
  }

  void updateGoogleLoginResponseStruct(
      Function(GoogleLoginResponseStruct) updateFn) {
    updateFn(_googleLoginResponse);
    prefs.setString('ff_googleLoginResponse', _googleLoginResponse.serialize());
  }

  String _projectID = '';
  String get projectID => _projectID;
  set projectID(String value) {
    _projectID = value;
    prefs.setString('ff_projectID', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
