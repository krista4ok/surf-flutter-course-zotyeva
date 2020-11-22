import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/string.dart';
import 'package:places/ui/res/text_style.dart';
import 'package:places/ui/screen/sight_card.dart';

class SightListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: primaryColor,
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 136),
          child: Padding(
            padding: const EdgeInsets.only(top: 64, left: 16, right: 16),
            child: RichText(
              text: TextSpan(
                text: listInterestingPlaces,
                style: textBold32.copyWith(
                  color: secondaryColor,
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: mocks.map((Sight sight) => SightCard(sight)).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
