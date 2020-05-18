import 'package:day8_30doc/utilities/constants.dart';
import 'package:day8_30doc/utilities/my_widgets.dart';
import 'package:day8_30doc/pages/explore_scroll.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    kScreenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ExploreScrollView(),
            ),
          );
        },
        child: Container(
          constraints: BoxConstraints.tightForFinite(
            width: kScreenSize.width,
            height: kScreenSize.height,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                kThemeWhite1,
                kThemeWhite1,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Stack(
            //      mainAxisAlignment: MainAxisAlignment.center,
            //    crossAxisAlignment: CrossAxisAlignment.center,
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(child: LogoEvents(LogoSize.large)),
              Positioned(
                  top: kScreenSize.height * 0.53,
                  child: LogoForTechies(LogoSize.large)),
            ],
          ),
        ),
      ),
    );
  }
}
