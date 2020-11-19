//import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
const kGoogleStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
const kLogInText =TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
const kAppBarTextStyle = TextStyle(
  letterSpacing: 2.0,
  fontSize: 40,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
const kInputLabelColor = TextStyle(
  letterSpacing: 3.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
const kAlertSignInText = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 20,
);
final kGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end:
  Alignment(0.6, 1.0), // 10% of the width, so there are ten blinds.
  colors: [
    const Color(0xFF3F51B5),
    const Color(0xFF03A9F4),
  ], // red to yellow
  tileMode: TileMode.repeated,
);
const kEmailSignInText = TextStyle(
fontSize: 18,
fontWeight: FontWeight.bold,
);
const kBottomSheetText = TextStyle(
  fontSize: 20,
  color: Colors.black,
);
const kDrawerHeaderText = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
const String kProjectID = 'law-chamber';
const String kFirebaseAPIKey = 'AIzaSyC-Yo5a6rhsqm5t5KXUYPZOG1R6G4JzHBQ';


const String kFirebaseAndroidAppID = '1:1018508677208:android:b168b1514647e8e1517a2d';
const String kFirebaseMessagingID = '1018508677208';
FirebaseApp firebaseApp ;
