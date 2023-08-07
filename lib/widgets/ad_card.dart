import 'package:flutter/cupertino.dart';

class AdCard extends StatelessWidget {
  final String url;
  const AdCard({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          //SizedBox(width: 20,),
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.network(url,
                fit: BoxFit.cover,
                height: 300,
                width:  490,
                ),
              ),
        ],
      ),
    );
  }
}