
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:islamiproject/cache/cache_helper.dart';
import 'package:islamiproject/hadeth_details/hadeth_details.dart';
import 'package:islamiproject/home/home.dart';
import 'package:islamiproject/my_theme_data.dart';
import 'package:islamiproject/onboarding_screen.dart';
import 'package:islamiproject/sura_details/sura_details.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp( DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: CacheHelper.getEligibility() == true
          ? HomeScreen.routeName
          : OnboardingScreen.routeName,
      routes: {
        OnboardingScreen.routeName: (context) => const OnboardingScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => const HadethDetailsScreen(),
        HomeScreen.routeName: (context) =>  HomeScreen(),
      },
    );
  }
}
