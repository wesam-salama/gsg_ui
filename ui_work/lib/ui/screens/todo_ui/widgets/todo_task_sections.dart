import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ToDoTaskSection extends StatelessWidget {
  bool isIcon;
  String iconPath;
  String title;
  bool descriptionIsTitle;
  String descriptionTitle;
  Widget descriptionWidget;
  ToDoTaskSection({
    @required this.isIcon,
    @required this.descriptionIsTitle,
    @required this.title,
    this.iconPath,
    this.descriptionTitle,
    this.descriptionWidget,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isIcon == null || !isIcon
              ? Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/todo/girl.png'),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: SvgPicture.asset(iconPath),
                ),
          SizedBox(
            width: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "AvenirNextRoundedPro-Medium",
                  fontSize: 16,
                  color: Color(0xff9a9a9a),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              descriptionIsTitle == null || !descriptionIsTitle
                  ? descriptionWidget
                  : Text(
                      descriptionTitle,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: "AvenirNextRoundedPro-Demi",
                        fontSize: 16,
                        color: Color(0xff313131),
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
