import 'package:flutter/material.dart';

TextStyle _text = TextStyle(
      fontStyle: FontStyle.normal,
    ),

    /// Bold.
    textBold = _text.copyWith(fontWeight: FontWeight.w700),
    textBold32 = textBold.copyWith(fontSize: 32),
    textBold14 = textBold.copyWith(fontSize: 14),

    /// Medium.
    textMedium = _text.copyWith(fontWeight: FontWeight.w500),
    textMedium16 = textMedium.copyWith(fontSize: 16),

    /// Regular.
    textRegular = _text.copyWith(fontWeight: FontWeight.w400),
    textRegular14 = textRegular.copyWith(fontSize: 14);
