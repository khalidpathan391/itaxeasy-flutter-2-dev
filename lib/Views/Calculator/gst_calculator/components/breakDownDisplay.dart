import 'package:flutter/material.dart';

class BreakDownDisplay extends StatelessWidget {
  final String amount;
  final String title;
  final String icon;
  final String iconLabel;

  const BreakDownDisplay({this.amount, this.title, this.icon, this.iconLabel});

  @override
  Widget build(context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ImageIcon(
              AssetImage(icon),
              color: Colors.blue.shade900,
              size: 26.0,
              semanticLabel: iconLabel,
            ),
            const SizedBox(width: 8.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.blue.shade900, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
            child: Text(
              'RS $amount',
              style: const TextStyle(
                  fontFamily: 'Assistant',
                  fontWeight: FontWeight.w400,
                  fontSize: 25),
            ),
          ),
        ),
      ],
    );
  }
}
