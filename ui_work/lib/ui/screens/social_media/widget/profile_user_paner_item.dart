import 'package:flutter/material.dart';

class ProfileUserPanerItem extends StatelessWidget {
  int value;
  String title;
  ProfileUserPanerItem({
    @required this.title,
    @required this.value,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$value",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "SFPro",
            fontSize: 16,
            color: Color(0xff047af2).withOpacity(0.80),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "SFPro",
            fontWeight: FontWeight.w500,
            fontSize: 11,
            color: Color(0xff161f3d),
          ),
        )
      ],
    );
  }
}
