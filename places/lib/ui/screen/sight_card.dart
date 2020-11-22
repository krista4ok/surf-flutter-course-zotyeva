import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/string.dart';
import 'package:places/ui/res/text_style.dart';

class SightCard extends StatelessWidget {
  final Sight _sight;

  SightCard(this._sight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 11, left: 16, right: 16),
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  color: Colors.deepPurpleAccent,
                ),
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      right: 18,
                      top: 19,
                      child: Container(
                        color: primaryColor,
                        height: 18,
                        width: 20,
                      ),
                    ),
                    Positioned(
                      top: 16,
                      left: 16,
                      child: Text(
                        category,
                        style: textBold14.copyWith(color: primaryColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  color: backgroundColor,
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      child: Text(
                        _sight.nameSights,
                        style: textMedium16.copyWith(color: secondaryColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 2, bottom: 16, left: 16, right: 16),
                      child: Text(
                        aroundTheClock,
                        style: textRegular14.copyWith(color: secondary2Color),
                      ),
                    ),
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
