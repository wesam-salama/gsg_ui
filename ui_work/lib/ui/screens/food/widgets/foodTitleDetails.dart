import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodTitleDetails extends StatelessWidget {
  String iconPath;
  String title;
  String subTitle;
  FoodTitleDetails({
    @required this.iconPath,
    @required this.subTitle,
    @required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(iconPath),
              SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(
                  fontFamily: "Avenir",
                  fontSize: 15,
                  color: Color(0xffffffff),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Text(
            subTitle,
            style: TextStyle(
              fontFamily: "Avenir",
              fontSize: 15,
              color: Color(0xffffffff).withOpacity(0.50),
            ),
          )
        ],
      ),
    );
  }
}
