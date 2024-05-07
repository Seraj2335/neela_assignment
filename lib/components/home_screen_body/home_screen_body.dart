import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:neela_assignment/components/home_screen_body/widgets/card_widget.dart';
import 'package:neela_assignment/components/home_screen_body/widgets/recent_transactions.dart';
import 'package:neela_assignment/components/home_screen_body/widgets/transfer_widget.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView(
      children: [
        CardWidget(size: size),
        Gap(size.height * .04),
        TransferWidget(),
        RecentTransactions()
      ],
    );
  }
}
