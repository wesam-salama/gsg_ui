import 'package:flutter/material.dart';

class MemberList extends StatelessWidget {
  List<String> members = [
    'assets/images/todo/member1.png',
    'assets/images/todo/member2.png',
    'assets/images/todo/member3.png',
    'assets/images/todo/member4.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: members
              .map(
                (e) => Container(
                  margin: EdgeInsets.only(right: 5, top: 3),
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(e),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Container(
          margin: EdgeInsets.only(right: 5, top: 3),
          padding: EdgeInsets.only(bottom: 7),
          width: 32,
          height: 32,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFF96060),
          ),
          child: Text(
            "…",
            style: TextStyle(
              fontFamily: "AvenirNextRoundedPro-Medium",
              fontSize: 16,
              color: Color(0xffffffff),
            ),
          ),
        )
      ],
    );
  }
}
