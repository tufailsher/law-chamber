import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'file:///C:/Users/Muhammad%20Tufail/AndroidStudioProjects/flutter_app/law_chamber/lib/utils/ContainerStyles.dart';
import 'package:law_chamber/pages/client_sign_up.dart';
import 'package:law_chamber/pages/lawyer_registration_page.dart';

import '../utils/Constants.dart';
import '../size_config.dart';

void registrationBottomSheet(context){
  showModalBottomSheet(context: context,
      builder: (BuildContext bc){
    return Container(
        height: SizeConfig.init(context).height(0.3),
        width: double.infinity,
        decoration: fBottomSheetContainer,
        child: Column(
          children: [
            Text("Choose an Option",
              style:TextStyle(
                fontSize: 30,
              ) ,
            ),
            Container(
              height: SizeConfig.init(context).height(0.1),
              child: Card(
                semanticContainer: true,
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.empire),
                  title: Text("Lawyer",
                    style: kBottomSheetText,
                  ),
                  trailing: Icon(Icons.arrow_forward,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LawyerRegistrationPage()));
                  },
                ),
              ),
            ),
            Container(
              height: SizeConfig.init(context).height(0.1),
              child: Card(
                semanticContainer: true,
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.empire),
                  title: Text("Client",
                    style: kBottomSheetText,
                  ),
                  trailing: Icon(Icons.arrow_forward,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>ClientSignUp()));
                  },
                ),
              ),
            ),
          ],
        )
    );
  });
}