import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:neela_assignment/constants.dart';
import 'package:neela_assignment/models/transaction_model.dart';

class TransactionDetails extends StatelessWidget {
  final TransactionModel modelData;

  const TransactionDetails({super.key, required this.modelData});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        backgroundColor: Color(0xfff5f5f5),
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            margin: EdgeInsets.fromLTRB(15, 5, 5, 5),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xffE8E8E6)),
            child: Icon(Icons.arrow_back),
          ),
        ),
        title: Center(child: Text('Receipt')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: size.height * .72,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff000000).withOpacity(.2), blurRadius: 6)
                ],
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xffffffff)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/img_5.jpg',
                  ),
                  radius: 40,
                ),
                Gap(10),
                Text(
                  modelData.amount,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  modelData.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '6090358170',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Gap(5),
                    Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                    Gap(5),
                    Text(
                      'BCA',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Gap(10),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  margin: EdgeInsets.symmetric(horizontal: 65),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color(0xffE9E9E9)),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.file_open_sharp,
                        color: Color(0xff62687D),
                      ),
                      Text(
                        'Bayar Hutange Bossque',
                        style: TextStyle(color: Color(0xff62687D)),
                      )
                    ],
                  ),
                ),
                Gap(15),
                DottedLine(
                  dashGapLength: 14,
                  dashColor: Colors.grey,
                ),
                Gap(20),
                for (int i = 0; i < tableData.length; i++)
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              tableData[i].title,
                              style: i == 5
                                  ? TextStyle(
                                      color:
                                          i == 0 ? Colors.green : Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14)
                                  : TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                      fontSize: 14),
                            ),
                            Text(
                              tableData[i].data,
                              style: TextStyle(
                                  color: i == 0 ? Colors.green : Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        Gap(6),
                        if (i == 4)
                          DottedLine(
                            dashGapLength: 14,
                            dashColor: Colors.grey,
                          ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          Gap(5),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(width: 1.5,color: Color(0xff6259E4)),
                borderRadius: BorderRadius.circular(10)),
            child: Text('Share Receipt', style: TextStyle(color: Color(0xff6259E4))),
          ),
          Gap(5),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Color(0xff6259E4),
                borderRadius: BorderRadius.circular(10)),
            child: Text('Close', style: TextStyle(color: Colors.white)),
          ),

        ],
      ),
    );
  }
}
