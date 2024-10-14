// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_sign_in/google_sign_in.dart';

Future<bool> logoutGoogle() async {
  bool signedOut = false;
  try {
    GoogleSignIn googleSignIn = GoogleSignIn(
      clientId:
          '1099239419018-lh1h4idkhbu80ismm65h4a62k9q3iau1.apps.googleusercontent.com',
      scopes: <String>[
        'email',
        'profile',
      ],
    );
    GoogleSignInAccount? account = await googleSignIn.signOut();
    if (account != null) {
      signedOut = true;

      print('User signed out successfully');
    } else {
      signedOut = false;
      print('User cancelled sign in');
    }
  } catch (error) {
    signedOut = false;
    print('Error signing in: $error');
  }
  return signedOut;
}
