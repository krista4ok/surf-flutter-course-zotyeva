import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/string.dart';
import 'package:places/ui/res/text_style.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  SightCard(this.sight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 11, left: 16, right: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    color: Colors.deepPurpleAccent,
                  ),
                  width: double.infinity,
                  height: 96,
                ),
                Positioned(
                  right: 18,
                  top: 19,
                  bottom: 59,
                  child: Container(
                    color: primaryColor,
                    height: 18,
                    width: 20,
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  bottom: 62,
                  child: Text(
                    category,
                    style: textBold14.copyWith(color: primaryColor),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                    color: backgroundColor,
                  ),
                  width: double.infinity,
                  height: 92,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    sight.nameSights,
                    style: textMedium16.copyWith(color: secondaryColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 58, bottom: 16, left: 16, right: 16),
                  child: Text(
                    aroundTheClock,
                    style: textRegular14.copyWith(color: secondary2Color),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
