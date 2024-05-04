import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get monumentExtended {
    return copyWith(
      fontFamily: 'Monument Extended',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodySmallGray100 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray100,
      );
  static get bodySmallLightblue700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lightBlue700,
        fontSize: 12.fSize,
      );
// Monument text style
  static get monumentExtendedGray100 => TextStyle(
        color: appTheme.gray100,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).monumentExtended;
}
