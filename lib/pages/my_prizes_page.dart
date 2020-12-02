import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:law_chamber/main.dart';
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
             ListTile(title : Text("Balance",style: kLogInText),
             subtitle:Text("0",style: kLogInText),
             trailing: CircleAvatar(
               radius: 20,
             ),
             ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    // height: sizeConfig.height(0.020),
                    child: ListTile(
                      title: Text("Redeemed",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      ),
                      subtitle: Text("0"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: ListTile(
                      title: Text("Earned",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      ),
                      subtitle: Text("0"),
                    ),
                  ),
                )
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