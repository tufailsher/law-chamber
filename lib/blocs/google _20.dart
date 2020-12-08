// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:observable/observable.dart';
// class AuthService{
//   final GoogleSignIn _googleSignIn = GoogleSignIn();
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _db = FirebaseFirestore.instance;
//   Observable<User>user;
//   Observable<Map<String,dynamic>>profile;
//   PublishSubject loading = PublishSubjects();
//   AuthService(){
//     user = Observable(_auth.onAuthStateChanged);
//     profile = user.switchMap((User u)
//     if (if (u != null){
//       return _db.collection("users").doc(u.uid).snapshots(.map)((snap)=>snap.data)
//     }else{
//       return Observable.just({});
//     }
//   });
// }
//
//   }
//   Future<User> googleSignIn()async {
//   loading.add(true);
//   GoogleSignInAccount googleUser = await _googleSignIn.signIn();
//   GoogleSignInAuthentication googleAuth=await googleUser.authentication;
//   User user = await _auth.signInWithGoogle(
//     accessToken: googleAuth.accessToken,
//     idToken: googleAuth.idToken,
//   );
//     void updateUserData (User user)async{
//       DocumentReference ref = _db.collection("users").doc(user.uid);
//       return ref.setData({
//         "uid":user.uid,
//         "email":user.email,
//         "photoURL": user.photoUrl,
//         "displayName": user.displayName,
//         "lastSeen":DateTime.now()
//       },merge: true);
//
//     }
//     void signOut(){
//
//     }
//
//   }
// }
// final AuthService authService =AuthService();