import 'package:abc/pages/categories.dart';
import 'package:abc/pages/login.dart';
import 'package:abc/utils/routes.dart';
import 'package:abc/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'pages/homepage.dart';
import 'pages/signup.dart';
import 'pages/login.dart';
import 'pages/cart.dart';
import 'pages/wishlist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyThemeData.lightTheme(context),
      darkTheme: MyThemeData.darkTheme(context),
      // color: Color(0xFFF0EBE3),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LogIn(),
        MyRoutes.loginRoute: (context) => LogIn(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.signupRoute: (context) => SignUpPage(),
        MyRoutes.wishlistRoute : (context) => WishList(),
        MyRoutes.cartRoute : (context) => Cart(),
        MyRoutes.categories : (context) => Categories(),
      },
    );
  }
}

