import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:law_chamber/utils/Constants.dart';
class MyPrizesPage extends StatefulWidget {
  @override
  _MyPrizesPageState createState() => _MyPrizesPageState();
}

class _MyPrizesPageState extends State<MyPrizesPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
             Text("Balance",style: kLogInText),
            Text("0",style: kLogInText),
            Row(
              children: [
                Expanded(child: Text("Redeemed",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),)),
                Text("Earned",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                )),
              ],
            ),
            OutlineButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                onPressed: (){}, child: Text("Redeemed Prizes")),

            TabBar(
              labelColor:Colors.purple ,
              indicatorColor: Colors.redAccent,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: "My LexPoints",
                ),
                Tab(
                  text: "Redeemed Prizes",
                ),
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.black26.withOpacity(.01),
                // height: sizeConfig.height(0.2),
                width: double.infinity,
                child: TabBarView(
                  children: [
                    Column(
                      children: [
                        ListTile(
                          title: Text("Points:5",style: kLogInText),
                          subtitle: Text("Activity Profile Accoint Completed"),
                        ),
                        ListTile(
                          title: Text("Points:4",style: kLogInText),
                          subtitle: Text("Activity Profile Accoint Completed"),
                        ),
                      ],
                    ),
                    Center(child: Text("WithDraws")),
                  ],
                ),
              ),
            ),
        ]
      ),
    ),
    );
  }
}
