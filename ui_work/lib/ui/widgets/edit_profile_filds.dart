import 'package:flutter/material.dart';

class EditProfileFields extends StatelessWidget {
  String title;
  dynamic value;
  EditProfileFields({
    @required this.title,
    @required this.value,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 19.0, top: 8, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: "SFPro",
                  fontSize: 14,
                  color: Color(0xff1a1818),
                ),
              ),
              Text(
                "$value",
                style: TextStyle(
                  fontFamily: "SFPro",
                  fontSize: 17,
                  color: Color(0xff047af2),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
