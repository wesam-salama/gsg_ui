import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'edit_profile.dart';
import 'widget/profile_user_paner_item.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 289,
            width: 375,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Color(0xff047AF2).withOpacity(0.8),
                    Color(0xff7850FF).withOpacity(0.8),
                  ],
                  stops: [
                    0.0,
                    1.0
                  ]),
              image: DecorationImage(
                  image: AssetImage('assets/images/photo.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2),
                    BlendMode.dstATop,
                  )

                  // colorFilter: ColorFilter.
                  ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 19.0, right: 19.0, bottom: 19.0, top: 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('assets/images/Setting.svg'),
                      Text(
                        "Profile",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "SFPro",
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EditProfilePage()));
                          },
                          child: SvgPicture.asset('assets/images/Edit.svg')),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 15),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/photo.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Linda I. Hartz",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "SFPro",
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xffffffff),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "New York",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "SFPro",
                      fontSize: 13,
                      color: Color(0xffffffff),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileUserPanerItem(
                  title: 'Posts',
                  value: 21,
                ),
                ProfileUserPanerItem(
                  title: 'Followers',
                  value: 981,
                ),
                ProfileUserPanerItem(
                  title: 'Following',
                  value: 63,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Posts",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "SFPro",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xff161f3d).withOpacity(0.80),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 3,
                      width: 141,
                      decoration: BoxDecoration(
                          color: Color(0xff047AF2),
                          borderRadius: BorderRadius.circular(1.5)),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Liked",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "SF Pro Text",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xff161f3d).withOpacity(0.30),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 3,
                      width: 141,
                    )
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 16.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset('assets/images/Home.svg'),
                SvgPicture.asset('assets/images/Search.svg'),
                SvgPicture.asset('assets/images/add.svg'),
                SvgPicture.asset('assets/images/Notification.svg'),
                SvgPicture.asset('assets/images/Profile.svg'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
