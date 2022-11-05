import 'package:flutter/material.dart';
import 'package:gst_app/Views/Business_Profile/ui/widgets/cards.dart';
import 'package:gst_app/Views/Business_Profile/ui/widgets/perspective_list_view.dart';

import '../models/contact.dart';


class ContactListPage extends StatefulWidget {
  const ContactListPage({
    Key key,
  }) : super(key: key);

  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  int _visibleItems;
  double _itemExtent;

  @override
  void initState() {
    _visibleItems = 8;
    _itemExtent = 270.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PerspectiveListView(

        visualizedItems: _visibleItems,
        itemExtent: _itemExtent,
        // initialIndex: 7,
        enableBackItemsShadow: true,
        backItemsShadowColor: Theme.of(context).scaffoldBackgroundColor,
        padding: const EdgeInsets.all(10),
        onTapFrontItem: (value) {},
        children: List.generate(Contact.contacts.length, (index) {
          final borderColor = Colors.accents[index % Colors.accents.length];
          final contact = Contact.contacts[index];
          return ContactCard(
            borderColor: borderColor,
            contact: contact,
          );
        }),
      ),
      //---------------------------------------
      // Drawer
      //---------------------------------------

    );
  }
}
