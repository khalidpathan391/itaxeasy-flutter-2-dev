import 'package:flutter/material.dart';

class SelerctCategory extends StatefulWidget {
  const SelerctCategory({Key key}) : super(key: key);

  @override
  State<SelerctCategory> createState() => _SelerctCategoryState();
}

class _SelerctCategoryState extends State<SelerctCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select Category",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.5,
                    fontSize: 12.5,
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.cut))
              ],
            )
          ],
        )
      ]),
    );
  }
}
