import 'package:flutter/material.dart';
import 'package:law_chamber/size_config.dart';
import '../main.dart';
import 'log_in_screen.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 2000), () {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LogInScreen())
      );
    });
  }
  @override
  void didChangeDependencies() {
    sizeConfig=SizeConfig.init(context);
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                child: Image(image: AssetImage("assets/images/logo.png"),
                ),
              )
            ],
          ),
        )
    );
  }
}
