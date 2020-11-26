import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/string.dart';
import 'package:places/ui/res/text_style.dart';

class SightDetailsScreen extends StatelessWidget {
  final Sight sight;

  const SightDetailsScreen({Key key, this.sight});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 360,
                  color: Colors.deepPurpleAccent,
                ),
                Positioned(
                  top: 36,
                  left: 16,
                  child: BackBtn(),
                ),
              ],
            ),
            SightInfoWidget(sight),
            BuildARouteBtn(),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
              child: Divider(
                color: secondary2Color.withOpacity(0.24),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ActionBtn(Icons.calendar_today, schedule, false),
                ActionBtn(Icons.favorite_border, toFavorites, true),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BackBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.arrow_back_ios_outlined,
        size: 10,
        color: Color(0xFF252849),
      ),
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class SightInfoWidget extends StatelessWidget {
  final Sight sight;

  SightInfoWidget(this.sight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sight.nameSights,
            style: textBold24.copyWith(color: secondaryColor),
          ),
          Row(
            children: [
              Text(
                sight.type,
                style: textBold14.copyWith(color: secondaryColor),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  aroundTheClock,
                  style: textRegular14.copyWith(color: secondary2Color),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Text(
              sight.details,
              style: textRegular14.copyWith(color: secondaryColor),
            ),
          ),
        ],
      ),
    );
  }
}

class BuildARouteBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 22,
              width: 20,
              child: Icon(
                Icons.wrap_text_outlined,
                color: primaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                buildARoute.toUpperCase(),
                style: textBold14.copyWith(
                    color: primaryColor, letterSpacing: 0.03),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActionBtn extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isAbled;

  const ActionBtn(this.icon, this.text, this.isAbled);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 10.5, left: 17, right: 9, bottom: 10.5),
            child: Icon(
              icon,
              color:
                  isAbled ? secondaryColor : secondary2Color.withOpacity(0.56),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 11, bottom: 11, right: 14),
            child: Text(
              text,
              style: textRegular14.copyWith(
                color: isAbled
                    ? secondaryColor
                    : secondary2Color.withOpacity(0.56),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
