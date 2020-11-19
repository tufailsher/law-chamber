import 'package:flutter/material.dart';
import 'package:law_chamber/utils/Constants.dart';
class LawyerData extends StatefulWidget {
  @override
  _LawyerDataState createState() => _LawyerDataState();
}

class _LawyerDataState extends State<LawyerData> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar( centerTitle: true,
            title: Text("Home Page"),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: kGradientColor,
              ),
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: kGradientColor,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    child: Icon(Icons.emoji_emotions,
                      size: 100.0,
                    ),
                   // backgroundImage: AssetImage(Icon(Icons.image)),
                  ),
                  Text("Muhammad Tufail",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Professional Lawyer",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'SourceSansPro',
                      color: Color(0xff00BCD4),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10.0,
                        horizontal: 25.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child:ListTile(
                        leading: Icon(Icons.create_outlined,
                          size: 20.0,
                          color: Color(0xff3F51B5),
                        ),
                        title:Text("Edit User Name",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "Source Sans Pro"
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10.0,
                        horizontal: 25.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                        leading:Icon(Icons.edit_attributes_outlined,
                          size: 20.0,
                          color: Color(0xff3F51B5),
                        ),
                        title: Text("Edit Chamber Name",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "Source Sans Pro"
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10.0,
                        horizontal: 25.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                        leading:Icon(Icons.edit_location_sharp,
                          size: 20.0,
                          color: Color(0xff3F51B5),
                        ),
                        title: Text("Edit Chamber Address",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "Source Sans Pro"
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10.0,
                        horizontal: 25.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                        leading:Icon(Icons.logout,
                          size: 20.0,
                          color: Color(0xff3F51B5),
                        ),
                        title: Text("Log Out",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "Source Sans Pro"
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
