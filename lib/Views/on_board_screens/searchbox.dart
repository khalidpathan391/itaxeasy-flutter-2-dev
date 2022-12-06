import 'package:flutter/material.dart';

class Searchbox extends StatefulWidget {
  const Searchbox({Key key}) : super(key: key);

  @override
  State<Searchbox> createState() => _SearchboxState();
}

class _SearchboxState extends State<Searchbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(width: 0.8)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          BorderSide(width: 0.8, color: Colors.blue.shade900)),
                  hintText: "Search Flutter Hope",
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30,
                  ),
                  suffixIcon: IconButton(
                      icon: const Icon(Icons.clear), onPressed: () {})),
            ),
          )
        ]),
      ),
    );
  }
}
