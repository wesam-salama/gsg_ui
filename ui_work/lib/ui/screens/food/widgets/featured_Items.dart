import 'package:flutter/material.dart';

class FeaturedItems extends StatelessWidget {
  String imagePath;
  String title;
  double price;

  FeaturedItems({
    @required this.imagePath,
    @required this.price,
    @required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 200,
          height: 120,
          margin: EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontFamily: "Avenir",
            fontSize: 15,
            color: Color(0xff1e2432),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "\$ $price",
          style: TextStyle(
            fontFamily: "Avenir",
            fontSize: 13,
            color: Color(0xffb8bbc6),
          ),
        )
      ],
    );
  }
}
