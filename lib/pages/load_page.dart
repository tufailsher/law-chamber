import 'package:flutter/material.dart';
import 'package:law_chamber/main.dart';
import 'package:law_chamber/utils/Constants.dart';
import 'package:law_chamber/widgets/app_bar_container.dart';
enum SingingCharacter {a, b,c,d}

class LoadPage extends StatefulWidget {
  @override
  _LoadPageState createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  SingingCharacter _character = SingingCharacter.a;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Load Credits"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: kGradientColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment,
          children: [

            Text(
                "*Minimum of P500 credits for consultation +P50 fee for Lawyer List. Standard payment provider fees apply for your account"),
             SizedBox(height:sizeConfig.height(0.010),),
            Row(
              children: [
                Text(
                  "Enter Amount",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.4),
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "Enter Amount",
                // labelText: "123"
              ),
            ),
            SizedBox(height: sizeConfig.height(0.020),),
            Row(
              children: [
                Text(
                  "Lawyer talk time",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.4),
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "Lawyer talk time",
                // labelText: "123"
              ),
            ),
            SizedBox(height: sizeConfig.height(0.020),
            ),
            Row(
              children: [
                Text(" I will pay:"),
              ],
            ),
            ListTile(
              title: const Text('E-walled or credit card'),
              leading: Radio(
                value: SingingCharacter.a,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
              trailing:Container(
                width: sizeConfig.width(0.30),
                child: Image(image: AssetImage('assets/images/payPall_logo.png')),
              ),
            ),
            ListTile(
              title: Text("Online Banking or Money Remittance"),
              leading: Radio(
                value: SingingCharacter.b,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
              trailing:Container(
                width: sizeConfig.width(0.30),
                child: Image(image: AssetImage('assets/images/dragonPay_logo.png')),
              ),
            ),
            ListTile(
              title: Text("Crypto Currency or Money Remittance"),
              leading: Radio(
                value: SingingCharacter.c,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
              trailing:Container(
                width: sizeConfig.width(0.30),
                child: Image(image: AssetImage('assets/images/coins.ph_logo.png')),
              ),
            ),
            ListTile(
              title: Text("Credit Card, Gcash or Grab pay"),
              leading: Radio(
                value: SingingCharacter.d,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
              trailing:Container(
                width: sizeConfig.width(0.30),
                child: Image(image: AssetImage('assets/images/payMongo_logo.png')),
              ),
            ),
            SizedBox(height: sizeConfig.height(0.040),),
            SizedBox(
              width: sizeConfig.width(.9),
              child: RaisedButton(
                color: Colors.red,
                  onPressed: (){},
              child: Text("Load Credits"),
              ),
            )
          ],
        ),
      ),
    );
  }
}