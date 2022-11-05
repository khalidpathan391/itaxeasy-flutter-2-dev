import 'package:flutter/material.dart';

class TakeHomeDisplay extends StatelessWidget {
  final String takehome;

  const TakeHomeDisplay({this.takehome});

  @override
  Widget build(context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 4),
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ImageIcon(
                  AssetImage('assets/icons/wallet.png'),
                  color: Colors.blue.shade900,
                  size: 26.0,
                  semanticLabel: 'wallet icon',
                ),
                SizedBox(width: 8.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Take Home Amount',
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'RS $takehome',
                style: const TextStyle(
                  fontFamily: 'Assistant',
                  fontWeight: FontWeight.w600,
                  fontSize: 37,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
