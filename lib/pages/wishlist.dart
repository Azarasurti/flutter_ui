// import 'package:abc/main.dart';
import 'package:abc/utils/routes.dart';
import 'package:abc/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:abc/widgets/wishlistproductcard.dart';

class WishList extends StatefulWidget {
  @override
  State<WishList> createState() => _WishList();
}

class _WishList extends State<WishList> {
  List<String> tprice = ["Rs. 1199", "Rs. 2980", "Rs. 2299", "Rs. 7000"];
  List<String> wprobrand = [
    "Pastel SweatShirt for Women",
    "Women Perfume",
    "Lip Concealer",
    "High Heels"
  ];
  List <String> wproductsname = ["Nike", "Channel", "Rare Beauty", "Gucci"];
  List wproducts = [
    "assets/images/Sweatshirt.jpg",
    "assets/images/Perfume.jpg",
    "assets/images/lipconcealer.jpg",
    "assets/images/heels.jpg"
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
                const Icon(CupertinoIcons.square_grid_3x2,
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
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.wishlistRoute);
              },
              child: Column(
                children: [
                  const Icon(
                    CupertinoIcons.heart_fill,
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: GridView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return WProductCard(
                      turl: wproductsname[index],
                      url: wproducts[index],
                      burl: wprobrand[index],
                      purl: tprice[index],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
