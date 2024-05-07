import 'dart:core';


import 'package:flutter/material.dart';

import 'models/activity_model.dart';
import 'models/transaction_model.dart';
import 'models/user_transfer_model.dart';

List<TransactionModel> transactionData = [
  TransactionModel(
      name: 'Maria', date: '18 Jul 2023', type: 'Send', amount: '-Rp650.000'),
  TransactionModel(
      name: 'Taylor',
      date: '18 Jul 2023',
      type: 'Receive',
      amount: '+Rp1.650.000')
];

List<ActivityModel> activityData = [
  ActivityModel(name: 'Top up', icon: Icons.card_giftcard),
  ActivityModel(name: 'Send', icon: Icons.send_to_mobile_outlined),
  ActivityModel(name: 'Request', icon: Icons.request_quote),
  ActivityModel(name: 'More', icon: Icons.more)
];

final List<UserTModel> userData = [
  UserTModel(name: 'Add', img: null),
  UserTModel(name: 'Maria', img: 'assets/img_1'),
  UserTModel(name: 'Daria', img: 'assets/img_2'),
  UserTModel(name: 'Emma', img: 'assets/img_3'),
  UserTModel(name: 'Stonei', img: 'assets/img_4'),
  UserTModel(name: 'Darlington', img: 'assets/img_5'),
  UserTModel(name: 'Asley', img: 'assets/img_6')
];

List<TableData> tableData = [
  TableData(title: 'Status',data: 'Success'),
  TableData(title: 'Date',data: '18 July 2023'),
  TableData(title: 'Time',data: '09:41 AM'),
  TableData(title: 'Transaction ID',data: 'CGX-1097564'),
  TableData(title: 'Tax',data: 'Rp6.500'),
  TableData(title: 'Total',data: 'Rp.2506.500'),

];

class TableData {
  String title;
  String data;

  TableData({required this.title, required this.data});
}


