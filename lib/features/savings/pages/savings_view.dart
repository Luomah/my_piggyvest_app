
import 'package:flutter/material.dart';
import 'package:my_piggyvest_app/features/home/widgets/savings_details_card.dart';
import 'package:my_piggyvest_app/features/savings/widgets/flexible_savings_section.dart';
import 'package:my_piggyvest_app/features/savings/widgets/strict_savings_section.dart';

class SavingsView extends StatelessWidget {
  const SavingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Savings"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.info_outline_rounded)
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SavingDetailsCard(
            balance: "\$24000",
            topRightWidget: Chip(
              label: Text(
                "up to 13% returns",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.black,
              shape: StadiumBorder(),
            ),
          ),
          StrictSavingsSection(),
          FlexibleSavingsSection(),

          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text("Find more"),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}