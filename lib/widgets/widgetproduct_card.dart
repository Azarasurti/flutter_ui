// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class ProductCard extends StatelessWidget {
//   final String url;
//   final String wurl;
//   const ProductCard({super.key, required this.url, required this.wurl});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         alignment: Alignment.bottomCenter,
//         //constraints: BoxConstraints(maxHeight: 500,maxWidth: 400,minHeight: 400,minWidth: 300),
//         width: 200,
//         height: 400,
//         decoration: BoxDecoration(
//           color: Color(0x70415A53),
//           borderRadius: BorderRadius.circular(18),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             SizedBox(
//               height: 20,
//             ),
//             Center(
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(20),
//                 child: Image.asset(
//                   url,
//                   height: 210,
//                   width: 300,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 25,
//             ),
//             Container(
//               height: 100,
//               padding: const EdgeInsets.only(left: 20),
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(18),
//                 color: Color(0x99415A53),
//               ),
//               child: const Column(
//                 // mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Row(children: [
//                     Text("NIKE",
//                       style: TextStyle(
//                         fontSize: 15,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 250,
//                     ),
//                     InkWell(
//                       child: Icon(
//                         CupertinoIcons.heart_fill,
//                         color: Colors.red,
//                         textDirection: TextDirection.ltr,
//                         size: 27,
//                       ),
//                     ),
//                   ]),
//                   // SizedBox(height: 10,),
//                   Text(
//                     "Pastel Sweatshirt for Women",
//                     style: TextStyle(fontSize: 16),
//                   ),
//                   SizedBox(
//                     height: 8,
//                   ),
//                   Text(
//                     "Rs.1199",
//                     style: TextStyle(fontSize: 18),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ));
//   }
// }
