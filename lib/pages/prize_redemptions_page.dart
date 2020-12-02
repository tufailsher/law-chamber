import 'package:flutter/material.dart';
import 'package:law_chamber/main.dart';
class PrizeRedemptionsPage extends StatefulWidget {
  @override
  _PrizeRedemptionsPageState createState() => _PrizeRedemptionsPageState();
}

class _PrizeRedemptionsPageState extends State<PrizeRedemptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: sizeConfig.height(0.5),
              child: Image(image: AssetImage('assets/images/powerBank.png')),
            ),
            ListTile(
              title: Text("Power bank",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
              subtitle: Text("A portable battery-powered device for charging the battery of a mobile phone or other electronic device. 'the speaker comes with a powerbank that can charge external devices via USB' More example sentences."),
            ),
            Row(
              children: [
                Text("  level 1|  ",style: TextStyle(
                  color: Colors.red,
                ),),
                Text("  Lex points 500|  ",style: TextStyle(
                  color: Colors.red,
                ),),
                Text("  Available 10  ",style: TextStyle(
                  color: Colors.red,
                ),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height:sizeConfig.height(0.050),
                  width: sizeConfig.width(.9),
                  child: RaisedButton(
                      color: Colors.red
                      ,onPressed: (){},
                  child: Text("Redeem"),
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
