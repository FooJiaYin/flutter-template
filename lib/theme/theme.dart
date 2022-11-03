import 'package:flutter/material.dart';
import 'colors.dart';
import 'font.dart';

class CustomTheme with ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;

  static ThemeData defaultTheme = ThemeData(
    useMaterial3: true,

    /// Colors
    primaryColor: ThemeColors.primaryColor,
    // colorSchemeSeed: ThemeColors.primaryColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ThemeColors.primaryColor,
    ),
    scaffoldBackgroundColor: ThemeColors.backgroundColor,
    backgroundColor: Colors.grey.shade400,
    shadowColor: Colors.grey.withOpacity(0.2),
    disabledColor: Colors.grey,

    textTheme: ThemeFont.textTheme,

    buttonTheme: ButtonThemeData(
      // 4
      padding: Dimensions.buttonPadding,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.buttonRadius),
      ),
      // disabledColor: _theme.disabledColor,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2)),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(Dimensions.buttonPadding),
        shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
        backgroundColor: MaterialStateProperty.all<Color>(ThemeColors.primaryColor),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
    ),

    iconTheme: const IconThemeData(
      color: ThemeColors.textColor,
      size: 20,
    ),

    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(ThemeColors.primaryColor),
      ),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: ThemeColors.backgroundColor,
      foregroundColor: ThemeColors.textColor,
    ),

    navigationBarTheme: const NavigationBarThemeData(
      indicatorColor: ThemeColors.primaryColor,
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: ThemeColors.primaryColor,
      unselectedItemColor: ThemeColors.textColor,
      selectedLabelStyle: TextStyle(fontSize: 12),
      showUnselectedLabels: true,
    ),

    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.cardRadius),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData.dark();
}

class Dimensions {
  static const screenPadding = 24.0;
  static const screenPaddingWide = 48.0;
  static const containerPadding = 12.0;
  static const cardRadius = 12.0;
  static const buttonRadius = 50.0;
  static const itemMargin = 12.0;
  static EdgeInsetsGeometry buttonPadding = const EdgeInsets.symmetric(
    horizontal: 36.0,
    vertical: 10.0,
  );
}

class ThemeDecoration {
  static List<BoxShadow> shadow = [
    BoxShadow(
      color: Colors.grey.withOpacity(0.2),
      spreadRadius: 1,
      blurRadius: 5,
      offset: const Offset(0, 4), // changes position of shadow
    ),
  ]; // changes position of shadow
}

/* ThemeData(
    useMaterial3: true,

    /// Colors
    primaryColor, colorSchemeSeed, colorScheme
    scaffoldBackgroundColor, backgroundColor, disabledColor
    splashColor, shadowColor, errorColor, hintColor

    /// Component color
    cardColor, dividerColor, indicatorColor, dialogBackgroundColor

    /// Components
    textTheme, fontFamily, textSelectionTheme
    iconTheme, primaryIconTheme
    buttonTheme, buttonBarTheme, elevatedButtonTheme, textButtonTheme, outlinedButtonTheme, toggleButtonsTheme, floatingActionButtonTheme
    appBarTheme, navigationBarTheme, bottomAppBarTheme, bottomNavigationBarTheme, tabBarTheme, drawerTheme
    dataTableTheme
    cardTheme, scrollbarTheme, listTileTheme, expansionTileTheme, dividerTheme, chipTheme, bannerTheme
    inputDecorationTheme, checkboxTheme, radioTheme, switchTheme, sliderTheme
    dialogTheme, bottomSheetTheme, popupMenuTheme, snackBarTheme, tooltipTheme, timePickerTheme
    progressIndicatorTheme

    /// Animation
    // pageTransitionsTheme
  ); */