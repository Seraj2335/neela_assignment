import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:neela_assignment/screens/transaction_details.dart';

import '../../../constants.dart';
import '../../../models/transaction_model.dart';

class RecentTransactions extends StatelessWidget {
  RecentTransactions({super.key});



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .3,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * .05),
        child: Column(
          children: [
            ListTile(
              visualDensity: VisualDensity(vertical: -3),
              contentPadding: EdgeInsets.all(0),
              leading: Text(
                'Recent Transaction',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
              trailing: Text('See All',
                  style: TextStyle(
                      color: Color(0xff7471CD),
                      fontWeight: FontWeight.w500,
                      fontSize: 16)),
            ),
            SizedBox(
              height: size.height * .2,
              child: ListView.builder(
                  itemCount: transactionData.length,
                  itemBuilder: (context, index) => ListTile(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TransactionDetails(modelData: transactionData[index],))),
                        contentPadding: EdgeInsets.only(left: 10, right: 0),
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffF4F7FA),
                          ),
                          child: Icon(
                            transactionData[index].type == 'Send'
                                ? Icons.send_to_mobile_outlined
                                : Icons.request_quote,
                            size: 28,
                            color: Colors.grey,
                          ),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              transactionData[index].name,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w700),
                            ),
                            Row(
                              children: [
                                Text(
                                  transactionData[index].date,
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                                Gap(3),
                                Container(
                                  width: 5,
                                  height: 3.5,
                                  decoration: BoxDecoration(
                                      color: Colors.black54,
                                      shape: BoxShape.circle),
                                ),
                                Gap(4),
                                Text(
                                  '${index + 2}.00',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            )
                          ],
                        ),
                        trailing: Text(
                          transactionData[index] == 'Send'
                              ? '${transactionData[index].amount}'
                              : '${transactionData[index].amount}',
                          style: TextStyle(
                              color: transactionData[index].type == 'Send'
                                  ? Colors.red
                                  : Colors.green,
                              fontSize: 15),
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}


