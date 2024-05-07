import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../constants.dart';
import '../../../models/user_transfer_model.dart';

class TransferWidget extends StatelessWidget {
  TransferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(left: size.width * .05),
            child: Text(
              'Quick Transfer',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w700),
            ),
          ),
          Gap(10),
          SizedBox(
            height: size.height * .13,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: size.width * .05),
              itemCount: userData.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.fromLTRB(index == 0 ? 0 : 8, 0, 8, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: index == 0
                          ? CustomPaint(
                              size: Size(size.height * .1, size.width * .05),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Icon(
                                  Icons.add,
                                  size: 35,
                                  color: Color(0xff7471CD),
                                ),
                              ),
                              foregroundPainter: new MyPainter(
                                  completeColor: Color(0xff7471CD), width: 2),
                            )
                          : Container(
                              width: 55,
                              height: 55,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(.6),
                                        blurRadius: 5,
                                        offset: Offset(0, 5))
                                  ],
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/img_$index.jpg'),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                          Colors.white, BlendMode.modulate)),
                                  color: Colors.blue,
                                  shape: BoxShape.circle),
                            ),
                    ),
                    Gap(4),
                    Text(
                      userData[index].name,
                      style: TextStyle(
                          color: index == 0 ? Color(0xff7471CD) : Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  Color lineColor = Colors.transparent;
  Color completeColor;
  double width;

  MyPainter({required this.completeColor, required this.width});

  @override
  void paint(Canvas canvas, Size size) {
    Paint complete = new Paint()
      ..color = completeColor
      ..strokeCap = StrokeCap.square
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    Offset center = new Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    var percent = (size.width * 0.001) / 2;

    double arcAngle = 2 * pi * percent;
    print("$radius - radius");
    print("$arcAngle - arcAngle");
    print("${radius / arcAngle} - divider");

    for (var i = 0; i < 30; i++) {
      var init = (-pi / 2) * (i / 4);

      canvas.drawArc(new Rect.fromCircle(center: center, radius: radius), init,
          arcAngle, false, complete);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
