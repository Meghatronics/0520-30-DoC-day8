import 'package:day8_30doc/pages/explore_scroll.dart';
import 'package:day8_30doc/utilities/constants.dart';
import 'package:day8_30doc/utilities/my_widgets.dart';
import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    kScreenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.tightForFinite(
          width: kScreenSize.width,
          height: kScreenSize.height,
        ),
        decoration: BoxDecoration(
          color: kThemeColor1,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              bottom: 0,
              left: 0,
              child: RotatedBox(
                quarterTurns: 2,
                child: QuarterCircleBackgroundShape(),
              ),
            ),
            Positioned(
              top: kScreenSize.height * 0.2 - 50,
              bottom: 0,
              left: 0,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ExploreScrollView()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                  child: ListView(
                    children: <Widget>[
                      EventCard(image: kImage2),
                      EventCard(image: kImage3),
                      EventCard(image: kImage1),
                      EventCard(image: kImage3),
                      EventCard(image: kImage1),
                      EventCard(image: kImage2),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: kScreenSize.height * 0.2,
              child: ExploreHeader(),
            ),
          ],
        ),
      ),
    );
  }
}

class ExploreHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.elliptical(33, 50),
        ),
        color: kThemeColor3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              
              LogoEvents(LogoSize.medium),
              LogoForTechies(LogoSize.medium),
              Spacer(flex: 5),
            ],
          ),
        Padding(
          padding: const EdgeInsets.only(top:13.0),
          child: Icon(Icons.computer, size: 40, color: kThemeColor1,),
        )
        ],
      ),
    );
  }
}
