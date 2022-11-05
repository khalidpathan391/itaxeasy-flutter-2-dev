import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import '../../Calculator/ifsc_calcii/Theme.dart';
import '../data/users.dart';
import '../model/user.dart';
import '../widget/scrollable_widget.dart';

class SortablePage extends StatefulWidget {
  @override
  _SortablePageState createState() => _SortablePageState();
}

class _SortablePageState extends State<SortablePage> {
  List<User> users;
  int sortColumnIndex;
  bool isAscending = false;

  @override
  void initState() {
    super.initState();

    this.users = List.of(allUsers);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: [
            ScrollableWidget(child: buildDataTable()),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Total",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                          fontSize: 17.5,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: TextFormField(
                        // controller: contactCont,
                        // keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Total:',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FadeInRight(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: GFButton(
                      padding: const EdgeInsets.all(10),
                      shape: GFButtonShape.pills,
                      color: Colors.blue.shade900,
                      onPressed: () {},
                      text: "Payment"),
                ),
                FadeInRight(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: GFButton(
                      color: Colors.blue.shade900,
                      padding: const EdgeInsets.all(10),
                      shape: GFButtonShape.pills,
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                      },
                      text: "Add"),
                ),
                FadeInRight(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: GFButton(
                      color: Colors.blue.shade900,
                      padding: const EdgeInsets.all(10),
                      shape: GFButtonShape.pills,
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                      },
                      text: "Receipt"),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            FadeInRight(
              delay: const Duration(milliseconds: 500),
              duration: const Duration(milliseconds: 500),
              child: GFButton(
                  color: Colors.blue.shade900,
                  size: GFSize.LARGE,
                  padding: const EdgeInsets.all(10),
                  shape: GFButtonShape.pills,
                  onPressed: () {},
                  text: "Download"),
            ),
          ],
        ),
      );

  Widget buildDataTable() {
    final columns = ['Date', 'Particular', 'Dr/Cr', 'Balance', 'Amount'];

    return DataTable(
      sortAscending: isAscending,
      sortColumnIndex: sortColumnIndex,
      columns: getColumns(columns),
      rows: getRows(users),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(column),
            onSort: onSort,
          ))
      .toList();

  List<DataRow> getRows(List<User> users) => users.map((User user) {
        final cells = [
          user.firstName,
          user.lastName,
          user.age,
          user.ok,
          user.oko
        ];

        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();

  void onSort(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      users.sort((user1, user2) =>
          compareString(ascending, user1.firstName, user2.firstName));
    } else if (columnIndex == 1) {
      users.sort((user1, user2) =>
          compareString(ascending, user1.lastName, user2.lastName));
    } else if (columnIndex == 2) {
      users.sort((user1, user2) =>
          compareString(ascending, '${user1.age}', '${user2.age}'));
    } else if (columnIndex == 3) {
      users.sort((user1, user2) =>
          compareString(ascending, '${user1.oko}', '${user2.oko}'));
    } else if (columnIndex == 4) {
      users.sort((user1, user2) =>
          compareString(ascending, '${user1.ok}', '${user2.ok}'));
    }

    setState(() {
      this.sortColumnIndex = columnIndex;
      this.isAscending = ascending;
    });
  }

  int compareString(bool ascending, String value1, String value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1);
}
