import 'package:flutter/material.dart';
import 'package:gst_app/Views/Tables/page/sortable_page.dart';
import 'package:gst_app/Views/Tables/widget/tabbar_widget.dart';
import 'package:gst_app/Views/on_board_screens/cashBankui.dart';

class CashBank extends StatefulWidget {
  const CashBank({Key key}) : super(key: key);

  @override
  State<CashBank> createState() => _CashBankState();
}

class _CashBankState extends State<CashBank> {
  @override
  Widget build(BuildContext context) => TabBarWidget(
        title: "DATA TABLE",
        tabs: [
          Tab(
            icon: Icon(Icons.account_balance),
            text: 'BANK',
          ),
          Tab(icon: Icon(Icons.attach_money), text: 'CASH'),
          // Tab(icon: Icon(Icons.edit), text: 'Editable'),
        ],
        children: [
          Cash(),
          Cash(),
        ],
      );
}
