import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_work/ui/widgets/edit_profile_filds.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 16,
                  ),
                  Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'SFPro',
                    ),
                  ),
                  Text(
                    "Save",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontFamily: "SFPro",
                      fontSize: 16,
                      color: Color(0xff047af2),
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 28),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/photo.png',
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(.7),
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: SvgPicture.asset(
                  'assets/images/camera.svg',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            EditProfileFields(
              title: 'Name',
              value: 'Linda I. Hartz',
            ),
            EditProfileFields(
              title: 'Address',
              value: 'Khalifa Park, Abu Dhabi, UAE',
            ),
            EditProfileFields(
              title: 'Email',
              value: 'Linda@host.com',
            ),
            EditProfileFields(
              title: 'Mobile',
              value: '009715932145654',
            ),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 19.0, top: 8, bottom: 8, right: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Birthdate',
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
                        "15-JAN-1990",
                        style: TextStyle(
                          fontFamily: "SFPro",
                          fontSize: 17,
                          color: Color(0xff047af2),
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/images/calendar.svg',
                        fit: BoxFit.scaleDown,
                        color: Color(0xff047af2),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
