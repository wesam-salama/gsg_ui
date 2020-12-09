import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FullMenu extends StatelessWidget {
  String title;
  int count;
  FullMenu({
    @required this.title,
    @required this.count,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: "Avenir",
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Color(0xff333a4d),
            ),
          ),
          Spacer(),
          Text(
            "$count",
            textAlign: TextAlign.right,
            style: TextStyle(
              fontFamily: "Avenir",
              fontSize: 15,
              color: Color(0xffb8bbc6),
            ),
          ),
          SizedBox(
            width: 3,
          ),
          SvgPicture.asset('assets/images/food/iosArrow.svg')
        ],
      ),
    );
  }
}
