import 'package:flutter/material.dart';

class EditProfileFields extends StatelessWidget {
  String title;
  dynamic value;
  Widget icon;
  Function onPress;
  EditProfileFields({
    @required this.title,
    @required this.value,
    @required this.onPress,
    this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          thickness: 1,
        ),
        GestureDetector(
          onTap: onPress,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 19.0, top: 8, bottom: 8, right: 19.0),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "$value",
                      style: TextStyle(
                        fontFamily: "SFPro",
                        fontSize: 17,
                        color: Color(0xff047af2),
                      ),
                    ),
                    icon == null ? Container() : icon
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
