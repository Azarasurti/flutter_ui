import 'package:abc/main.dart';
import 'dart:html';
import 'package:abc/utils/routes.dart';
import 'package:abc/widgets/drawer.dart';
import 'package:abc/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> tprice = ["Rs. 1199", "Rs. 2980", "Rs. 2299", "Rs. 7000"];
  List<String> probrand = [
    "Pastel SweatShirt for Women",
    "Women Perfume",
    "Lip Concealer",
    "High Heels"
  ];
  List<String> productsname = ["Nike", "Channel", "Rare Beauty", "Gucci"];
  List products = [
    "assets/images/Sweatshirt.jpg",
    "assets/images/Perfume.jpg",
    "assets/images/lipconcealer.jpg",
    "assets/images/heelsf.jpeg"
  ];
  List productbrand = ["NIKE", "SAINT LAURENT", "RARE BEAUTY", "GUCCI"];
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
                Text(
                  'HOME',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: GoogleFonts.saira().fontFamily,
                    color: Colors.black,
                    fontSize: 25,
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
            SizedBox(
              height: 20,
            ),
            Row(children: [
              SizedBox(
                width: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(
                  'assets/images/Men.jpg',
                  fit: BoxFit.cover,
                  height: 300,
                  width: 490,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.network(
                  "https://images.pexels.com/photos/322207/pexels-photo-322207.jpeg?auto=compress&cs=tinysrgb&w=400",
                  fit: BoxFit.cover,
                  height: 300,
                  width: 490,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.network(
                  "assets/images/Cosmetics.jpg",
                  fit: BoxFit.cover,
                  height: 300,
                  width: 490,
                ),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: GridView.builder(
                  itemCount: productsname.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return ProductCard(
                      turl: productsname[index],
                      url: products[index],
                      burl : probrand[index], 
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
