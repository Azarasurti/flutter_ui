import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category_Card extends StatefulWidget {
  final String imageUrl;
  final String txt;
  // final String text;

  Category_Card({required this.imageUrl, required this.txt});

  @override
  State<Category_Card> createState() => _Category_CardState();
}

class _Category_CardState extends State<Category_Card> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width / 5);
    double widthImage = MediaQuery.of(context).size.width / 5;
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Container(
        // height: 700,
        child: Column(
          children: [
            ClipOval(
              child: Image.asset(
                widget.imageUrl,
                fit: BoxFit.cover,
                width: widthImage,
                height: widthImage,
              ),
            ),
            // SizedBox(height: 16.0),
            Spacer(
              flex: 3,
            ),
            Text(
              widget.txt,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
