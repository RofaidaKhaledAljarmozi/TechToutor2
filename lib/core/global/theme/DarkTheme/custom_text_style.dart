import 'package:flutter/material.dart';
import 'package:project/core/global/theme/DarkTheme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {

  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );

  static get bodySmallGray100 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray100.withOpacity(0.7),
        fontSize: 10,
      );

  static get bodySmallWhiteA70012_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12,
      );

  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray100 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray100,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );

  static get titleSmallBluegray300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray300,
      );
  static get titleSmallGray100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray100,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      );

  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.8),
      );
  static get passwordHint => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.blueGray400,
  );
}

// extension on TextStyle {
//   TextStyle get signature {
//     return copyWith(
//       fontFamily: 'Signature',
//     );
//   }
//
//   TextStyle get poppins {
//     return copyWith(
//       fontFamily: 'Poppins',
//     );
//   }
//
//   TextStyle get montserrat {
//     return copyWith(
//       fontFamily: 'Montserrat',
//     );
//   }
// }
