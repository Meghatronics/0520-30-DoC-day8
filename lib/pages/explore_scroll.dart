import 'package:flutter/material.dart';
import 'package:day8_30doc/utilities/constants.dart';
import 'package:day8_30doc/utilities/my_widgets.dart';
import 'package:day8_30doc/pages/explore.dart';
class ExploreScrollView extends StatelessWidget {
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
          children: <Widget>[
            Positioned(
              top: 0,
              right: 0,
              child: QuarterCircleBackgroundShape(),
            ),
            Positioned(
              top: kScreenSize.height * 0.25,
              child: ExploreScrollBar(),
            ),
            Positioned(
              top: kScreenSize.height * 0.08,
              width: 200,
              child: _FindEventsLabel(),
            )
          ],
        ),
      ),
    );
  }
}

class ExploreScrollBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tightFor(
        width: kScreenSize.width,
        height: kScreenSize.height * 0.6,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              '<',
              style: kExploreBracketTextStyle,
            ),
          ),
          Expanded(
            child: Container(
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ExploreScrollBarItem(label: "Hackerthons", image: kImage2),
                  ExploreScrollBarItem(
                      label: "Online Workshops", image: kImage3),
                  ExploreScrollBarItem(label: "For Women", image: kImage1),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              '>',
              style: kExploreBracketTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}

class ExploreScrollBarItem extends StatelessWidget {
  const ExploreScrollBarItem({this.image, this.label});

  final ImageProvider image;
  final String label;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(0),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Explore()),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        padding: EdgeInsets.all(10),
        constraints: BoxConstraints.tightFor(
          width: kScreenSize.width,
          height: kScreenSize.height * 0.6,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kThemeColor4,
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            )),
        alignment: Alignment.bottomRight,
        child: DecoratedBox(
          decoration: BoxDecoration(color: kThemeLogoBlack),
          child: Text(
            label,
            style: kExploreScrollBarItemTextStyle,
            maxLines: 2,
            textAlign: TextAlign.right,
          ),
        ),
      ),
    );
  }
}

class _FindEventsLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 50,
      ),
      child: Text(
        'Find Events',
        maxLines: 2,
        style: kFindEventsLabelTextStyle,
      ),
    );
  }
}
