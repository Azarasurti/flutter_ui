import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final String url;
  final String turl;
  final String burl;
  final String purl;
  const ProductCard(
      {super.key, required this.url, required this.turl, required this.burl, required this.purl});
  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomCenter,
        //constraints: BoxConstraints(maxHeight: 500,maxWidth: 400,minHeight: 400,minWidth: 300),
        width: 200,
        height: 400,
        decoration: BoxDecoration(
          color: Color(0x70415A53),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  widget.url,
                  height: 210,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 100,
              padding: const EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color(0x99415A53),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(children: [
                    Text(
                      widget.turl,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                        child: isSelected
                            ? Icon(
                                CupertinoIcons.heart_fill,
                                color: Color(0xFF415A53),
                                textDirection: TextDirection.ltr,
                                size: 27,
                              )
                            : Icon(
                                CupertinoIcons.heart,
                                textDirection: TextDirection.ltr,
                                size: 27,
                              )),
                    SizedBox(
                      width: 15,
                    ),
                  ]),
                  // SizedBox(height: 10,),
                  Text(
                    widget.burl,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.purl,
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
