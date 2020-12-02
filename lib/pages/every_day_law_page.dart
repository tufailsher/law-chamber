import 'package:flutter/material.dart';
import 'package:law_chamber/pages/clients_fame_page.dart';
import 'package:law_chamber/pages/my_prizes_page.dart';
import 'package:law_chamber/pages/news_page.dart';
import 'package:law_chamber/pages/what_new_page.dart';
import 'package:law_chamber/utils/Constants.dart';

import 'prize_redemptions_page.dart';
class EveryDayLawPage extends StatefulWidget {
  @override
  _EveryDayLawPageState createState() => _EveryDayLawPageState();
}

class _EveryDayLawPageState extends State<EveryDayLawPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Every Day"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: kGradientColor,
          ),
        ),
      ),
      body: DefaultTabController(
        length: 7,
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              labelColor:Colors.purple ,
              indicatorColor: Colors.redAccent,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: "News",
                ),
                Tab(
                  text: "Every Day Law",
                ),
                Tab(
                  text: "My Prizes",
                ),
                Tab(
                  text: "Promotions",
                ),
                Tab(
                  text: "Clients",
                ),
                Tab(
                  text: "Clients Hall of fame",
                ),
                Tab(
                  text: "Prize for Redemptions",
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
                    NewsPage(),
                    WhatNewPage(),
                    MyPrizesPage(),
                    Column(
                      children: [
                        Text("Promotions",style: kLogInText,),
                        Image(image: AssetImage("assets/images/2.png"),)
                      ],
                    ),
                    Center(child: Text("Clients")),
                    ClientsFamePage(),
                    PrizeRedemptionsPage(),
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
