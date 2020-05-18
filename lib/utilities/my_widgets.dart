import 'package:flutter/material.dart';
import 'package:day8_30doc/utilities/constants.dart';
import 'package:google_fonts/google_fonts.dart';

// events; part of logo
class LogoEvents extends StatelessWidget {
  final LogoSize _logoSize;

  LogoEvents(this._logoSize);

  @override
  Widget build(BuildContext context) {
    return Text(
      'events;',
      style: GoogleFonts.quicksand(
        fontSize: _logoSize == LogoSize.large
            ? 70
            : _logoSize == LogoSize.medium ? 50 : 20,
        color: _logoSize == LogoSize.medium ? Colors.white70 : kThemeLogoGreen,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class LogoForTechies extends StatelessWidget {
  final LogoSize _logoSize;

  LogoForTechies(this._logoSize);

  @override
  Widget build(BuildContext context) {
    return Text('<FOR TECHIES>',
        style: GoogleFonts.sourceCodePro(
          fontSize: _logoSize == LogoSize.large
              ? 30
              : _logoSize == LogoSize.medium ? 20 : 17,
          color: kThemeLogoBlack,
          fontWeight: FontWeight.bold,
        ));
  }
}

class QuarterCircleBackgroundShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tightFor(
        width: kScreenSize.width * 0.8,
        height: kScreenSize.height * 0.6,
      ),
      decoration: BoxDecoration(
        color: kThemeColor3,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(
            kScreenSize.width * 0.8,
            kScreenSize.height * 0.6,
          ),
        ),
      ),
    );
  }
}

class ChipSet extends StatelessWidget {
  final List<Widget> children;
  final String label;

  ChipSet({this.label, this.children});
  @override
  Widget build(BuildContext context) {
    return Container(
      //   color: Colors.cyanAccent,
      constraints:
          BoxConstraints.tightForFinite(height: 60, width: kScreenSize.width),
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 5,
        runSpacing: 5,
        alignment: WrapAlignment.start,
        runAlignment: WrapAlignment.start,
        children: children,
      ),
    );
  }
}

class MyChip extends StatefulWidget {
  final String label;
  final Function action;

  MyChip({@required this.label, this.action});

  @override
  _MyChipState createState() => _MyChipState();
}

class _MyChipState extends State<MyChip> {
  bool active = false;
  Color activeColor = kThemeColor1;
  Color inactiveColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // widget.action();

        setState(() {
          active = true;
        });
      },
      child: Container(
        constraints: BoxConstraints.tightForFinite(height: 25),
        decoration: BoxDecoration(
            border: Border.all(color: kThemeColor4),
            borderRadius: BorderRadius.circular(5),
            color: active ? activeColor : inactiveColor),
        child: Text(widget.label),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final ImageProvider image;
  EventCard({
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: 7,
              bottom: 7,
              left: 25,
              right: 20,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                alignment: Alignment.bottomRight,
                decoration: BoxDecoration(
                  color: kThemeColor3,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: image,
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color(0x77333333), BlendMode.darken)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text('Geek and Team', style: kEventsCardOrganiserTextStyle),
                    Spacer(),
                    Text('30 Days of Code', style: kEventsCardNameTextStyle),
                    Text('happening online',
                        style: kEventsCardLocationTextStyle)
                  ],
                ),
              )),
          Positioned(
            left: 5,
            top: 25,
            width: 90,
            height: 70,
            child: Container(
              color: Colors.transparent,
              child: Card(
                color: kThemeColor4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'WEDNESDAY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          //    height: 1,

                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        '09',
                        style: TextStyle(
                          fontSize: 32,
                          height: 1,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'MAY',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            height: 1,
                            fontSize: 15,
                            letterSpacing: 4),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 191.5,
              left: 10,
              right: 10,
              child: Divider(
                color: kThemeLogoBlack.withOpacity(0.2),
                thickness: 1,
              ))
        ],
      ),
    );
  }
}
