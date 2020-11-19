import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
//import 'package:image_auto_slider/image_auto_slider.dart';
import 'file:///C:/Users/Muhammad%20Tufail/AndroidStudioProjects/flutter_app/law_chamber/lib/utils/Constants.dart';
import 'package:law_chamber/size_config.dart';

class EveryDayNewLawContainer extends StatelessWidget {
  const EveryDayNewLawContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: ListTile(
        title: Text("Every Day New Law",
          style: kLogInText,
        ),
        subtitle: Container(
          height: SizeConfig.init(context).height(0.30),
          width:SizeConfig.init(context).width(0.9),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            //border: Border.all(color: Colors.black54),
          ),
          child: Carousel(
            boxFit: BoxFit.cover,
            autoplay: true,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 6.0,
            dotIncreasedColor: Color(0xFFFF335C),
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.topRight,
            dotVerticalPadding: 10.0,
            showIndicator: true,
            indicatorBgPadding: 7.0,
            images: [
              Image(image:AssetImage("assets/images/2.png"),
              fit: BoxFit.fill,
              ),
              //AssetImage(),
              AssetImage("assets/images/3.png"),
              AssetImage("assets/images/4.png"),
              AssetImage("assets/images/5.png",),
            ],
          ),
        ),
      ),
    );
  }
}


