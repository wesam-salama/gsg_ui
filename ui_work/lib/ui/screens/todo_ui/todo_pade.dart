import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets/members_list.dart';
import 'widgets/todo_task_sections.dart';

class ToDoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF96060),
        body: Container(
            margin: EdgeInsets.only(top: 66, left: 16, right: 16, bottom: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('assets/images/todo/cancel.svg'),
                        SvgPicture.asset('assets/images/todo/setting.svg')
                      ])),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 24, top: 4, bottom: 20, right: 13),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(bottom: 13),
                            child: Text(
                                "Meeting according with design \nteam in Central Park",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: "AvenirNextRoundedPro-Demi",
                                    fontSize: 18,
                                    color: Color(0xff313131)))),
                        ToDoTaskSection(
                            isIcon: false,
                            title: 'Assigned to',
                            descriptionIsTitle: true,
                            descriptionTitle: 'Stephen Chow'),
                        Divider(thickness: 1),
                        ToDoTaskSection(
                            isIcon: true,
                            iconPath: 'assets/images/todo/calender.svg',
                            title: 'Due Date',
                            descriptionIsTitle: true,
                            descriptionTitle: 'Aug 5,2018'),
                        Divider(thickness: 1),
                        ToDoTaskSection(
                            isIcon: true,
                            iconPath: 'assets/images/todo/description.svg',
                            title: 'Decription',
                            descriptionIsTitle: true,
                            descriptionTitle:
                                'Lorem ipsum dolor sit amet, \nconsectetur adipiscing. '),
                        Divider(thickness: 1),
                        ToDoTaskSection(
                            isIcon: true,
                            iconPath: 'assets/images/todo/members.svg',
                            title: 'Members',
                            descriptionIsTitle: false,
                            descriptionWidget: MemberList()),
                        Divider(thickness: 1),
                        ToDoTaskSection(
                            isIcon: true,
                            iconPath: 'assets/images/todo/tag.svg',
                            title: 'Tag',
                            descriptionIsTitle: false,
                            descriptionWidget: Container(
                                width: 90,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [BoxShadow(color: Colors.grey)]),
                                child: Text("Personal",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "AvenirNextRoundedPro-Demi",
                                      fontSize: 16,
                                      color: Color(0xff6074f9),
                                      fontWeight: FontWeight.normal,
                                    )))),
                        Container(
                            height: 48,
                            width: 295,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xFF6074F9),
                                borderRadius: BorderRadius.circular(5)),
                            child: Text("Complete Task",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "AvenirNextRoundedPro-Demi",
                                    fontSize: 18,
                                    color: Color(0xffffffff)))),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(" Comment",
                                style: TextStyle(
                                    fontFamily: "AvenirNextRoundedPro-Demi",
                                    fontSize: 17,
                                    color: Color(0xff313131))),
                            SizedBox(width: 18),
                            SvgPicture.asset('assets/images/todo/downArrow.svg')
                          ],
                        )
                      ]))
            ])));
  }
}
