import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minimal_grocery/constants/app_colors.dart';
import 'package:minimal_grocery/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const dummyAvatarUrl =
      'https://st2.depositphotos.com/2703645/5669/v/950/depositphotos_56695433-stock-illustration-female-avatar.jpg';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: AppColors.primaryWhiteColor,
          accentColor: const Color(0xFFCADCF8),
          backgroundColor: AppColors.primaryWhiteColor,
          textTheme: TextTheme(
              headline1: TextStyle(
                  color: AppColors.headerTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
              headline2:
                  TextStyle(color: AppColors.headerTextColor, fontSize: 24),
              headline3: TextStyle(
                  color: AppColors.primaryWhiteColor,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),
          appBarTheme: AppBarTheme(
              backgroundColor: const Color(0xFFCADCF8), elevation: 0)),
      darkTheme: ThemeData(
          primaryColor: AppColors.darkModeBackground,
          accentColor: AppColors.darkModeBackground,
          backgroundColor: Colors.red,
          textTheme: TextTheme(
              headline1: TextStyle(
                  color: AppColors.primaryWhiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
              headline2:
                  TextStyle(color: AppColors.primaryWhiteColor, fontSize: 24),
              headline3: TextStyle(
                  color: AppColors.primaryWhiteColor,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),
          appBarTheme: AppBarTheme(
              backgroundColor: AppColors.darkModeBackground, elevation: 0)),
      home: Scaffold(
        appBar: AppBar(
          actions: [
            CircleAvatar(
              backgroundImage: NetworkImage(dummyAvatarUrl),
              radius: 24,
            ),
            SizedBox(width: 24)
          ],
        ),
        body: Stack(
          children: [
            HomeScreen(),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.list_alt,
                        size: 28,
                      ),
                      title: SizedBox.shrink()),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.local_offer_outlined, size: 28),
                      title: SizedBox.shrink()),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person, size: 28),
                      title: SizedBox.shrink()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
