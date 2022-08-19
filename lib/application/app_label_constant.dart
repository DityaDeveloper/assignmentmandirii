import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppLabel {
  static const loginLabel = "Login";

  // connection
  static const connMobile = "Your connection using mobile network";
  static const connWifi = "Your connection using wifi network";
  static const connNone = "Lost Connection";

  static const kThemoviedbURL = "https://api.themoviedb.org/3/movie";
  static const kThemoviedbSearchURL =
      "https://api.themoviedb.org/3/search/movie";
  static const kThemoviedbImageURL = "https://image.tmdb.org/t/p/w300";
  static const kHomeScreenButtonFirstText = "Populars";
  static const kHomeScreenButtonSecondText = "Coming Soon";
  static const kHomeScreenButtonThirdText = "Top Rated";
  static const kHomeScreenTitleText = "Watch Now";
  static const k404Text = "Movies not found";
  static const kFavoriteRemovedText = "Movie removed from Favorites";
  static const kFavoriteAddedText = "Movie added to Favorites";
  static const kDetailsScreenTitleText = "Overview";
  static const kStoryLineTitleText = "Storyline";
  static const kSplashScreenTitleText = "loading..";
  static const kFinderScreenTitleText = "Finder";
  static const kFavoriteScreenTitleText = "Favorites";
  static const kDrawerTitleFirstText = "THEME";
  static const kDrawerTitleSecondText = "ABOUT";
  static const kDrawerTitleThirdText = "DEPENDENCIES";
  static const kAppliedTheme = "Theme applied";
  static const kNotFoundErrorText = "Not found";
  static const kDrawerAboutDescText =
      "Hi, I am a practicing Flutter developer. You see currently my portfoliowork, which is based on the themoviedb API. If you want to see my future developments, follow me on GitHub (vellt).";
  static const kDrawerDependenciesDescText =
      "\t• sizer\n\t• flutter_spinkit\n\t• cached_network_image\n\t• fluttertoast\n\t• http\n\t• path_provider";
  static const kMainGreenColor = Color(0xFF37A45E);
  static const kMainOrangeColor = Color(0xFFE58901);
  static const kMainBlueColor = Color(0xFF2C78C5);
  static const kMainPinkColor = Color(0xFFE84CAF);

  static const kPrimaryColor = Color(0xFF101010);
  static const kLightGrey = Color(0xFF545454);
  static const kAppBarColor = Color(0xFF1C1C1C);
  static const kTextShadowColor = Color(0x4D000000);
  static const kBackgroundShadowColor = Color(0x4D161616);
  static const kDrawerLineColor = Color(0xFF707070);
  static const kInactiveButtonColor = Color(0xFF474747);
  static const kDrawerTextColor = Color(0xFFBEBEBE);
  static const kSubTitleCardBoxColor = Color(0xFF8E8E8E);
  static const kSearchAppBarColor = Color(0xFF161616);

  final kTextShadow = [
    Shadow(
        offset: Offset(0, 0.1.h), blurRadius: 6.0.sp, color: kTextShadowColor),
  ];

// final kBoxShadow = [
//   BoxShadow(
//     color: kPrimaryColor,
//     spreadRadius: 5,
//     blurRadius: 30.sp,
//     offset: const Offset(0, 3),
//   ),
// ];

// final  kHomeScreenButtonTextStyle = TextStyle(
//   fontSize: 14.sp,
//   fontWeight: FontWeight.bold,
//   shadows: kBoxShadow,
// );

// final kBoldTitleTextStyle = TextStyle(
//   fontSize: 12.sp,
//   fontWeight: FontWeight.bold,
//   shadows: kTextShadow,
// );

// final kTitleTextStyle = TextStyle(
//   fontSize: 12.sp,
//   shadows: kTextShadow,
// );

  final kDrawerDescTextStyle = TextStyle(
    fontSize: 14.sp,
    color: kDrawerTextColor,
    height: 0.19.h,
  );

// final kAppBarTitleTextStyle = TextStyle(
//   fontSize: 28.sp,
//   fontWeight: FontWeight.bold,
//   shadows: kTextShadow,
// );

  final kSplashScreenTextStyle = TextStyle(
    fontSize: 12.0.sp,
    color: kLightGrey,
  );

  final kSubTitleCardBoxTextStyle = TextStyle(
    color: kSubTitleCardBoxColor,
    fontSize: 9.sp,
  );

  final kSmallAppBarTitleTextStyle = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
  );

  final kSmallTitleTextStyle = TextStyle(fontSize: 18.sp);

  final kTextFieldDecoration = InputDecoration(
    border: InputBorder.none,
    focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
  );

  final kMovieAppBarTitleTextStyle = TextStyle(fontSize: 22.sp);

  final kDetailScreenBoldTitle = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
  );
  final kDetailScreenRegularTitle = TextStyle(
    fontSize: 20.sp,
  );
}
