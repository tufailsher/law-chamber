import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:zap_architecture/zap_architecture.dart';
import 'package:zap_architecture_flutter/zap_architecture_flutter.dart';
FirebaseFirestore db = FirebaseFirestore.instance;

class AuthenticationBLOC extends ChangeNotifier with StatusMixin {
  bool success= true;

  Future<Response<String>>signIn(String email, String password)async {

    try {
      User user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email, password: password)).user;
      String type = await getUserType(user.uid);
      print (type);
      return Response.success(type);
    }catch(e,s){
      print("AuthenticationBLOC: SignIn: UnexpectedError: $e: $s");
      return Response.error();
    }
  }
  Future<String>getUserType(String userID) async {

    var user =
    await db.collection('userData').doc(userID).get();
    print(user['type']);
    return  user['type'];

  }
  static final FacebookLogin facebookSignIn = new FacebookLogin();
  void showMessage(String message) {
      message = message;
      notifyListeners();
  }

  String message = 'Log in/out by pressing the buttons below.';

  Future<Null> facebookLogIn() async {
    final FacebookLoginResult result =
    await facebookSignIn.logIn(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final FacebookAccessToken accessToken = result.accessToken;
        showMessage('''
         Logged in!
         
         Token: ${accessToken.token}
         User id: ${accessToken.userId}
         Expires: ${accessToken.expires}
         Permissions: ${accessToken.permissions}
         Declined permissions: ${accessToken.declinedPermissions}
         ''');
        break;
      case FacebookLoginStatus.cancelledByUser:
        showMessage('Login cancelled by the user.');
        break;
      case FacebookLoginStatus.error:
        showMessage('Something went wrong with the login process.\n'
            'Here\'s the error Facebook gave us: ${result.errorMessage}');
        break;
    }
  }

}