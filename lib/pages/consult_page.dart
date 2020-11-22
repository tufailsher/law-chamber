import 'package:flutter/material.dart';
import 'package:law_chamber/main.dart';
import 'package:law_chamber/utils/Constants.dart';
class ConsultPage extends StatefulWidget {
  @override
  _ConsultPageState createState() => _ConsultPageState();
}

class _ConsultPageState extends State<ConsultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: sizeConfig.height(0.050),
              ),
              child: ListTile(
                leading: Icon(Icons.supervised_user_circle,size: sizeConfig.height(0.1)),
                title: (Text("Muhammad Tufail",style: kLogInText,)),
                subtitle: ListTile(
                  title: FlatButton(
                      color: Colors.red,
                      child: Text("Submit Legal Problems"),
                    onPressed: (){},
                ),
                  subtitle: FlatButton(
                    color: Colors.orangeAccent,
                    child: Text("Load Credits"),
                    onPressed: (){},
                  ),
                ),
              ),
            ),

            TabBar(
              labelColor:Colors.purple ,
              indicatorColor: Colors.redAccent,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: "Requests",
                ),
                Tab(
                  text: "Appointments",
                ),
                Tab(
                  text: "Consulted",
                ),
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.white.withOpacity(0.03),
                //height: sizeConfig.height(0.66),
                width: double.infinity,
                child: TabBarView(
                  children: [
                    Center(child: Text("Requests")),
                    Center(child: Text("Appointments")),
                    Center(child: Text("Consulted")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
