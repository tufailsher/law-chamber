import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
}