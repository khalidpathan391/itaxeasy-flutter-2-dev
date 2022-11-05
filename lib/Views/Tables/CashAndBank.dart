import 'package:flutter/material.dart';
import 'package:gst_app/Views/Tables/page/sortable_page.dart';
import 'package:gst_app/Views/Tables/widget/tabbar_widget.dart';

class CashAndBank extends StatefulWidget {
  const CashAndBank({Key key}) : super(key: key);

  @override
  State<CashAndBank> createState() => _CashAndBankState();
}

class _CashAndBankState extends State<CashAndBank> {
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
          SortablePage(),
          SortablePage(),
        ],
      );
}
