import 'package:abc/pages/homepage.dart';
import 'package:abc/utils/routes.dart';
import 'package:abc/widgets/category_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:abc/widgets/category_card.dart';

class Categories extends StatelessWidget {
  List <String> categoryname = [
    "Women",
    "Men",
    "Self Care",
    "Accessories",
    "Kids",
    "Sports & Fitness"
  ];
  List products = [
    "assets/images/Women.jpg",
    "assets/images/menpic.jpg",
    "assets/images/selfcare.jpeg",
    "assets/images/accessories.jpg",
    "assets/images/kidz.jpeg",
    "assets/images/sports.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0EBE3),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: [
          const SizedBox(width: 60),
          Image.asset(
            'assets/images/appbar_Logo.png',
            height: 45,
            width: 45,
          ),
          const SizedBox(width: 25),
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 9,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: Text(
                    'HOME',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: GoogleFonts.saira().fontFamily,
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 900,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.categories);
            },
            child: Column(
              children: [
                const SizedBox(
                  height: 0.1,
                ),
                const Icon(CupertinoIcons.square_grid_3x2_fill,
                    color: Color(0xFF415A53)),
                Text(
                  'Categories',
                  style: TextStyle(
                      fontFamily: GoogleFonts.saira().fontFamily,
                      fontSize: 18,
                      color: Colors.black),
                )
              ],
            ),
          ),
          SizedBox(width: 90),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.wishlistRoute);
            },
            child: Column(
              children: [
                const Icon(
                  CupertinoIcons.heart,
                  color: Color(0xFF415A53),
                ),
                Text(
                  'Wishlist',
                  style: TextStyle(
                      fontFamily: GoogleFonts.saira().fontFamily,
                      fontSize: 18,
                      color: Colors.black),
                )
              ],
            ),
          ),
          const SizedBox(width: 90),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.cartRoute);
            },
            child: Column(
              children: [
                const SizedBox(
                  height: 0.1,
                ),
                const Icon(CupertinoIcons.cart, color: Color(0xFF415A53)),
                Text(
                  'Cart',
                  style: TextStyle(
                      fontFamily: GoogleFonts.saira().fontFamily,
                      fontSize: 18,
                      color: Colors.black),
                )
              ],
            ),
          ),
          SizedBox(
            width: 60,
          )
        ],
        backgroundColor: Color(0xFFF0EBE3),
        automaticallyImplyLeading: false,
        elevation: 12,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: GridView.builder(
                itemCount: products.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20),
                itemBuilder: (context, index) {
                  return AspectRatio(
                    aspectRatio: 2,
                    child: Category_Card(
                      txt: categoryname[index],
                      imageUrl: products[index],
                    ),
                  );
                })),
      ),
    );
  }
}
