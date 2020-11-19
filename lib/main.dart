import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:law_chamber/blocs/authentications_bloc.dart';
import 'package:law_chamber/size_config.dart';
import 'package:provider/provider.dart';
import 'utils/Constants.dart';
import 'pages/splash_screen.dart';

SizeConfig sizeConfig;

final FirebaseOptions kFirebaseOptions = FirebaseOptions(
  appId: kFirebaseAndroidAppID,
  apiKey: kFirebaseAPIKey,
  projectId: kProjectID,
  messagingSenderId: kFirebaseMessagingID,
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  firebaseApp = await Firebase.initializeApp(options: kFirebaseOptions);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AuthenticationBLOC()),
        ],
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          title: "Law Chamber",
          home: SplashScreen(),
        ),
      );
}
