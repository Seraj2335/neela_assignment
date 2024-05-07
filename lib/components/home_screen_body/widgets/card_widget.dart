import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../constants.dart';
import '../../../models/activity_model.dart';

class CardWidget extends StatelessWidget {
  CardWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .4,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * .05),
        child: Column(
          children: [
            Container(
              height: size.height * .25,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff7471CD),
                      blurRadius: 5,
                    ),
                  ],
                  gradient: LinearGradient(
                      begin: AlignmentDirectional.bottomStart,
                      end: AlignmentDirectional.topEnd,
                      colors: [Color(0xff7471CD), Color(0xffBA55CB)]),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Stack(
                alignment: AlignmentDirectional.topStart,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(size.width * .05,
                        size.width * .06, size.width * .05, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Current Balance',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Text(
                              'Rp25.00.000',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Gap(10),
                            Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              for (int i = 0; i < 4; i++)
                                WidgetSpan(child: circleContainer()),
                              WidgetSpan(
                                  child: SizedBox(
                                width: 10,
                              )),
                              for (int i = 0; i < 4; i++)
                                WidgetSpan(child: circleContainer()),
                              WidgetSpan(
                                  child: SizedBox(
                                width: 10,
                              )),
                              for (int i = 0; i < 4; i++)
                                WidgetSpan(child: circleContainer()),
                              WidgetSpan(
                                  child: SizedBox(
                                width: 10,
                              )),
                            ])),
                            Container(
                                padding: EdgeInsets.only(top: 7),
                                child: Text(
                                  '2564',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )),
                          ],
                        ),
                        ListTile(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          leading: Text(
                            'Master Card',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          trailing: Text('09/27',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      width: 100,
                      left: 0,
                      child: Image.asset('assets/dot_image.png')),
                  Positioned(
                      width: 100,
                      right: 0,
                      bottom: 0,
                      child: Image.asset(
                        'assets/ripple_image.png',
                        color: Colors.white.withOpacity(.5),
                      )),
                  Positioned(
                    top: 35,
                    right: 42,
                    child: buildContainer(Colors.white.withOpacity(0.5)),
                  ),
                  Positioned(
                    top: 35,
                    right: 22,
                    child: buildContainer(Colors.white.withOpacity(.8)),
                  )
                ],
              ),
            ),
            Gap(size.height * .03),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * .05),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: activityData
                      .map((e) => Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xff7471CD),
                                          blurRadius: 4,
                                          offset: Offset(0, 5))
                                    ],
                                    color: Color(0xffF4F7FA),
                                    shape: BoxShape.circle),
                                child: Icon(
                                  e.icon,
                                  size: size.height * .035,
                                  color: Color(0xff7471CD),
                                ),
                              ),
                              Gap(7),
                              Text(
                                e.name,
                                style: TextStyle(
                                    color: Colors.black.withOpacity(.9),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              )
                            ],
                          ))
                      .toList()),
            )
          ],
        ),
      ),
    );
  }

  Container circleContainer() {
    return Container(
      margin: EdgeInsets.only(right: 5),
      width: 6,
      height: 6,
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
    );
  }

  Container buildContainer(Color color) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
