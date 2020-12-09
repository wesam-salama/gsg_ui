import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_work/ui/screens/food/widgets/featured_Items.dart';
import 'package:ui_work/ui/screens/food/widgets/foodTitleDetails.dart';
import 'package:ui_work/ui/screens/food/widgets/full_menu.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 352,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/food/firstPhoto.png'),
                  fit: BoxFit.contain,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5),
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 5, top: 15, bottom: 80),
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          Spacer(),
                          SvgPicture.asset('assets/images/food/share.svg'),
                          SizedBox(width: 27),
                          SvgPicture.asset('assets/images/food/saveItem.svg'),
                        ],
                      ),
                    ),
                    Container(
                      height: 17,
                      width: 77,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0XFFFF8C00),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Free delivery",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          // fontFamily: "Avenir",
                          fontSize: 11,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Boon Lay Ho Huat Fried Prawn Noodle",
                      style: TextStyle(
                        fontFamily: "Avenir",
                        fontSize: 30,
                        color: Color(0xffffffff),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/food/location.svg'),
                        SizedBox(width: 5),
                        Text(
                          "03 Jameson Manors Apt. 177",
                          style: TextStyle(
                            fontFamily: "Avenir",
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Color(0xffb8bbc6),
                          ),
                        )
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FoodTitleDetails(
                          iconPath: 'assets/images/food/star.svg',
                          title: "4.5",
                          subTitle: "351 Ratings",
                        ),
                        Container(
                          width: 1,
                          height: 32,
                          color: Colors.grey,
                        ),
                        FoodTitleDetails(
                          iconPath: 'assets/images/food/saveItemWhite.svg',
                          title: "137k",
                          subTitle: "Bookmark",
                        ),
                        Container(
                          width: 1,
                          height: 32,
                          color: Colors.grey,
                        ),
                        FoodTitleDetails(
                          iconPath: 'assets/images/food/galary.svg',
                          title: "346",
                          subTitle: "Photo",
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 84,
                    color: Color(0xFFFCC1B9),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "New! Try Pickup",
                                style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontSize: 15,
                                  color: Color(0xffff8c00),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Pickup on your time. Your order is\nready when you are.",
                                maxLines: 2,
                                style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontSize: 13,
                                  color: Color(0xff333a4d),
                                ),
                              )
                            ],
                          ),
                          Container(
                            width: 106,
                            height: 35,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xffff8c00),
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "Order now",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Avenir",
                                fontSize: 13,
                                color: Color(0xffffffff),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Featured Items",
                      style: TextStyle(
                        fontFamily: "Avenir",
                        fontSize: 20,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, bottom: 15.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          FeaturedItems(
                            imagePath: 'assets/images/food/secondPhoto.png',
                            title: 'Peanut Chaat with Dahi',
                            price: 9.50,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          FeaturedItems(
                            imagePath: 'assets/images/food/thirdPhoto.png',
                            title: 'Khasta Kachori with Cheese',
                            price: 12.50,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text(
                          "Full menu",
                          style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 20,
                            color: Color(0xff000000),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "View all",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 16,
                            color: Color(0xffff8c00),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        SvgPicture.asset('assets/images/food/arrowRight.svg')
                      ],
                    ),
                  ),
                  FullMenu(
                    title: 'Popular items',
                    count: 3,
                  ),
                  FullMenu(
                    title: 'Salads',
                    count: 2,
                  ),
                  FullMenu(
                    title: 'Chicken',
                    count: 5,
                  ),
                  FullMenu(
                    title: 'Soups',
                    count: 6,
                  ),
                  FullMenu(
                    title: 'Vegetables',
                    count: 7,
                  ),
                  FullMenu(
                    title: 'Noodles',
                    count: 4,
                  ),
                  FullMenu(
                    title: 'Drink',
                    count: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
