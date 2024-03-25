// import 'package:flutter/material.dart';
//
// class DarkColor{
//
// }
// ThemeData darkTheme()=>ThemeData(
// visualDensity: VisualDensity.standard,
// colorScheme: colorScheme,
// textTheme: TextThemes.textTheme(colorScheme),
// elevatedButtonTheme: ElevatedButtonThemeData(
// style: ElevatedButton.styleFrom(
// disabledBackgroundColor: appTheme.blueGray300,
// backgroundColor: appTheme.indigoA700,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(10),
// ),
// visualDensity: const VisualDensity(
// vertical: -4,
// horizontal: -4,
// ),
// padding: EdgeInsets.zero,
// ),
// ),
// dividerTheme: DividerThemeData(
// thickness: 2,
// space: 2,
// color: appTheme.blueGray300.withOpacity(0.5),
// ),
// );
//
// class CustomTextStyles {
//
//   static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
//     color: appTheme.whiteA700,
//   );
//
//   static get bodySmallGray100 => theme.textTheme.bodySmall!.copyWith(
//     color: appTheme.gray100.withOpacity(0.7),
//     fontSize: 10,
//   );
//
//   static get bodySmallWhiteA70012_1 => theme.textTheme.bodySmall!.copyWith(
//     color: appTheme.whiteA700,
//     fontSize: 12,
//   );
//
//   static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
//     fontWeight: FontWeight.w700,
//   );
//   static get titleMediumBold_1 => theme.textTheme.titleMedium!.copyWith(
//     fontWeight: FontWeight.w700,
//   );
//   static get titleMediumGray100 => theme.textTheme.titleMedium!.copyWith(
//     color: appTheme.gray100,
//     fontSize: 16,
//     fontWeight: FontWeight.w600,
//   );
//
//   static get titleSmallBluegray300 => theme.textTheme.titleSmall!.copyWith(
//     color: appTheme.blueGray300,
//   );
//   static get titleSmallGray100 => theme.textTheme.titleSmall!.copyWith(
//     color: appTheme.gray100,
//     fontSize: 15,
//     fontWeight: FontWeight.w600,
//   );
//
//   static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
//     fontWeight: FontWeight.w600,
//   );
//   static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
//     color: appTheme.whiteA700.withOpacity(0.8),
//   );
//   static get passwordHint => theme.textTheme.titleSmall!.copyWith(
//     color: appTheme.blueGray400,
//   );
// }
//
// class CustomButtonStyles {
//
//   static ButtonStyle get fillGray =>  ButtonStyle(
//     backgroundColor:  MaterialStateProperty.all<Color>(Colors.white60),
//     shape: MaterialStateProperty.all(
//       RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10)),
//     ),
//     minimumSize: MaterialStateProperty.all( Size(120, 40)),
//   );
//
//   static ButtonStyle get fillBlue =>  ButtonStyle(
//     backgroundColor:  MaterialStateProperty.all<Color>(theme.primaryColor),
//     shape: MaterialStateProperty.all(
//       RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10)),
//     ),
//     minimumSize: MaterialStateProperty.all( Size(120, 40)),
//   );
// }
//
// // class ColorSchemes {
// //   static final primaryColorScheme = ColorScheme.light(
// //     // Primary colors
// //     // primary: Color(0XFF6C63FF),
// //     // primaryContainer: Color(0XFF232426),
// //     // secondary: Color(0XFF232426),
// //     // secondaryContainer: Color(0XFF6C63FF),
// //     // tertiary: Color(0XFF232426),
// //     // tertiaryContainer: Color(0XFF6C63FF),
// //
// //     // Background colors
// //     // background: Color(0XFF232426),
// //
// //     // Surface colors
// //     // surface: Color(0XFF232426),
// //     // surfaceTint: Color(0XFF232426),
// //     // surfaceVariant: Color(0XFF6C63FF),
// //
// //     // Error colors
// //     // error: Color(0XFF232426),
// //     // errorContainer: Color(0XFF6C63FF),
// //     // onError: Color(0XFFE6E6E6),
// //     // onErrorContainer: Color(0XFF232426),
// //
// //     // On colors(text colors)
// //     // onBackground: Color(0XFFE6E6E6),
// //     // onInverseSurface: Color(0XFFE6E6E6),
// //     // onPrimary: Color(0XFF232426),
// //     // onPrimaryContainer: Color(0XFFE6E6E6),
// //     // onSecondary: Color(0XFFE6E6E6),
// //     // onSecondaryContainer: Color(0XFF232426),
// //     // onTertiary: Color(0XFFE6E6E6),
// //     // onTertiaryContainer: Color(0XFF232426),
// //
// //     // Other colors
// //     // outline: Color(0XFF232426),
// //     // outlineVariant: Color(0XFF232426),
// //     // scrim: Color(0XFF232426),
// //     // shadow: Color(0XFF232426),
// //
// //     // Inverse colors
// //     // inversePrimary: Color(0XFF232426),
// //     // inverseSurface: Color(0XFF232426),
// //
// //     // Pending colors
// //     // onSurface: Color(0XFFE6E6E6),
// //     // onSurfaceVariant: Color(0XFF232426),
// //   );
// // }
//
// class PrimaryColors {
//   // Black
//   Color get black900 => Color(0XFF000000);
//
//   // Blackf
//   Color get black9003f => Color(0X3F000000);
//
//   // BlueGray
//   Color get blueGray300 => Color(0XFF949FA6);
//   Color get blueGray400 => Color(0XFF888888);
//
//   // Gray
//   Color get gray100 => Color(0XFFF2F2F2);
//   Color get gray600 => Color(0XFF666D73);
//   Color get gray800 => Color(0XFF404040);
//   Color get gray80001 => Color(0XFF363E40);
//   Color get gray80002 => Color(0XFF484848);
//
//   // Indigo
//   Color get indigoA700 => Color(0XFF3D31FF);
//
//   // White
//   Color get whiteA700 => Color(0XFFFFFFFF);
// }
//
// PrimaryColors get appTheme => themeColor();
// ThemeData get theme => themeData();
