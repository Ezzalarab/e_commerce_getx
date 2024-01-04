import 'app_colors_extention.dart';
import 'app_colors.dart';
import 'app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static final _lightAppColors = AppColorsExtension(
    primary: AppColors.primary,
    onPrimary: AppColors.background,
    secondary: AppColors.primaryDark,
    onSecondary: AppColors.primaryText,
    error: AppColors.error,
    onError: AppColors.white,
    background: AppColors.background,
    onBackground: AppColors.primaryText,
    surface: AppColors.background,
    onSurface: AppColors.black,
  );

  static final dark = ThemeData.dark().copyWith(
    primaryColor: _darkAppColors.primary,
    primaryColorDark: _darkAppColors.onBackground,
    textTheme: TextTheme(
        titleLarge: AppTypography.body1.copyWith(
          color: _darkAppColors.onBackground,
        ),
        displayLarge: AppTypography.h5.copyWith(
          color: _darkAppColors.onBackground,
        ),
        displayMedium: AppTypography.h5.copyWith(
          color: _darkAppColors.onBackground,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: AppTypography.h5.copyWith(
          color: _darkAppColors.onBackground,
        ),
        displaySmall: AppTypography.h6.copyWith(
          color: _darkAppColors.onBackground,
        ),
        labelSmall: AppTypography.h6.copyWith(
          color: _darkAppColors.onBackground,
        ),
        bodyLarge: AppTypography.bodyLarge.copyWith(
          color: _darkAppColors.onBackground,
        ),
        bodySmall: AppTypography.bodySmall.copyWith(
          color: _darkAppColors.onBackground,
        ),
        bodyMedium: AppTypography.body1.copyWith(
          color: AppColors.greyText,
        ),
        titleMedium: AppTypography.h4.copyWith(
          color: _darkAppColors.onBackground,
        ),
        // Note: Default text style for Text widget.
        labelLarge: AppTypography.h6.copyWith(
          color: _darkAppColors.onBackground,
        ),
        labelMedium: AppTypography.body1.copyWith(
          color: _darkAppColors.onBackground,
        ),
        headlineLarge: AppTypography.h4.copyWith(
          color: _darkAppColors.onBackground,
        ),
        headlineSmall: AppTypography.bodySmall.copyWith(
          color: _darkAppColors.onBackground,
        )),
    extensions: [
      _darkAppColors,
    ],
  );

  static final _darkAppColors = AppColorsExtension(
    primary: AppColors.primaryDark,
    onPrimary: AppColors.primaryText,
    secondary: AppColors.secondary,
    onSecondary: AppColors.primaryText,
    error: AppColors.error,
    onError: AppColors.primaryText,
    background: AppColors.primaryDark,
    onBackground: AppColors.white,
    surface: AppColors.grey.greyE,
    onSurface: AppColors.white,
  );

  static final light = () {
    final defaultTheme = ThemeData.light();

    return defaultTheme.copyWith(
      primaryColor: _lightAppColors.primary,
      primaryColorDark: _darkAppColors.primary,
      textSelectionTheme:
          const TextSelectionThemeData(selectionColor: Colors.white),
      dropdownMenuTheme: DropdownMenuThemeData(
          inputDecorationTheme: InputDecorationTheme(
              hintStyle: AppTypography.body1.copyWith(color: Colors.black54)),
          textStyle: AppTypography.body1
              .copyWith(color: _lightAppColors.onBackground)),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: AppTypography.body1.copyWith(
          color: Colors.black54,
          fontWeight: FontWeight.w500,
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: _lightAppColors.primary,
        linearMinHeight: 30.0,
        circularTrackColor: _lightAppColors.background,
      ),
      drawerTheme: DrawerThemeData(
          backgroundColor: _lightAppColors.onPrimary,
          elevation: 0,
          surfaceTintColor: _lightAppColors.onPrimary,
          width: 300,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
          ))),
      listTileTheme: const ListTileThemeData(
        style: ListTileStyle.drawer,
        leadingAndTrailingTextStyle: AppTypography.body1,
        titleTextStyle: AppTypography.body1,
        // minVerticalPadding: 20,
        subtitleTextStyle: AppTypography.body1,
        enableFeedback: true,
        titleAlignment: ListTileTitleAlignment.center,
        horizontalTitleGap: 20,
        visualDensity: VisualDensity.comfortable,
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        iconColor: Colors.black,
        textColor: Colors.black,
        tileColor: Colors.transparent,
        selectedTileColor: Colors.transparent,
      ),
      tabBarTheme: TabBarTheme(
        dividerColor: _lightAppColors.secondary,
        indicatorColor: _lightAppColors.onPrimary,
        labelColor: _lightAppColors.onPrimary,
        unselectedLabelStyle: AppTypography.h5.copyWith(color: Colors.white60),
        labelStyle: AppTypography.h5.copyWith(
          color: _lightAppColors.onPrimary,
        ),
      ),
      // bottomAppBarTheme: BottomAppBarTheme(
      //   color: _lightAppColors.onPrimary,
      // ),
      appBarTheme: AppBarTheme(
        backgroundColor: _lightAppColors.primary,
        toolbarTextStyle: AppTypography.body1.copyWith(
          color: _lightAppColors.onPrimary,
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
        foregroundColor: _lightAppColors.onPrimary,
        titleTextStyle: AppTypography.h3.copyWith(fontWeight: FontWeight.w600),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(
          color: _lightAppColors.onPrimary,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
      ),

      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _lightAppColors.primary,
        foregroundColor: _lightAppColors.onPrimary,
        splashColor: _lightAppColors.primary,
        hoverColor: _lightAppColors.primary,
        focusColor: _lightAppColors.secondary,
      ),
      textTheme: defaultTheme.textTheme.copyWith(
          titleLarge: AppTypography.body1.copyWith(
            color: _lightAppColors.onBackground,
          ),
          displayLarge: AppTypography.h5.copyWith(
            color: _lightAppColors.onBackground,
          ),
          displayMedium: AppTypography.h5.copyWith(
            color: _lightAppColors.onBackground,
            fontWeight: FontWeight.w600,
          ),
          headlineMedium: AppTypography.h5.copyWith(
            color: _lightAppColors.onBackground,
          ),
          displaySmall: AppTypography.h6.copyWith(
            color: _lightAppColors.onBackground,
          ),
          labelSmall: AppTypography.h6.copyWith(
            color: _lightAppColors.onBackground,
          ),
          bodyLarge: AppTypography.bodyLarge.copyWith(
            color: _lightAppColors.onBackground,
          ),
          bodySmall: AppTypography.bodySmall.copyWith(
            color: _lightAppColors.onBackground,
          ),
          bodyMedium: AppTypography.body1.copyWith(
            color: AppColors.primaryText,
          ),
          titleMedium: AppTypography.h4.copyWith(
            color: _lightAppColors.onBackground,
          ),
          // Note: Default text style for Text widget.
          labelLarge: AppTypography.h6.copyWith(
            color: _lightAppColors.onBackground,
          ),
          labelMedium: AppTypography.body1.copyWith(
            color: _lightAppColors.onBackground,
          ),
          headlineLarge: AppTypography.h4.copyWith(
            color: _lightAppColors.onBackground,
          ),
          headlineSmall: AppTypography.bodySmall.copyWith(
            color: _lightAppColors.onBackground,
          )),
      extensions: [
        _lightAppColors,
      ],
    );
  }();
}

extension AppThemeExtension on ThemeData {
  // / Usage example: Theme.of(context).appColors;
  AppColorsExtension get appColors =>
      extension<AppColorsExtension>() ?? AppTheme._lightAppColors;

  AppColorsExtension get appColorsDark =>
      extension<AppColorsExtension>() ?? AppTheme._darkAppColors;
}

extension ThemeGetter on BuildContext {
  // Usage example: `context.theme`
  ThemeData get theme => Theme.of(this);
}
