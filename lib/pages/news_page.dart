import 'package:flutter/material.dart';
import 'package:law_chamber/main.dart';
import 'package:law_chamber/utils/Constants.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
          Container(
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
            color: Colors.white
        ),
        child: ListTile(
          title:Container(
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(10),
            //   border: Border.all(color: Colors.black54),
            // ),
            height: sizeConfig.height(0.30),
            width:sizeConfig.width(0.9),
            child: Center(
              child:Image(image: AssetImage("assets/images/news1.jpg"),
                  height: sizeConfig.height(0.3),
                  width: sizeConfig.width(.99),
                  fit: BoxFit.fill
              ),
            ),
          ),
          subtitle:
          ListTile(
            title: Text("Every day law news will be here",style:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            subtitle: ListTile(
              title:Text("Most Americans would consider themselves honest, law abiding citizens. But is that true? Yes, you try your haDepartment of Justice tried to count all of the criminal offenses on the books and gave up after finding 3,000"),
              subtitle:RichText(
                text: TextSpan(
                  text: 'LexMeet |',
                  style: TextStyle(
                    color: Colors.redAccent
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Posted|',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' 11/12/2020'),
                  ],
                ),
              ),
            ),
          )
        ),
      ),

            ],
          ),
        ),
      ),
    );
  }
}