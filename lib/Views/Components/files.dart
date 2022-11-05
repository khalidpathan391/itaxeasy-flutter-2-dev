import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gst_app/Views/Components/responsive.dart';
import '../GSTIN_SECTION/gstn.dart';
import '../Theme/colors.dart';
import '../e-pay-tax.dart';
import '../itr.dart';
import 'constants.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            // Text(
            //   "My Files",
            //   style: Theme.of(context).textTheme.subtitle1,
            // ),
            // ElevatedButton.icon(
            //   style: TextButton.styleFrom(
            //     padding: EdgeInsets.symmetric(
            //       horizontal: defaultPadding * 1.5,
            //       vertical:
            //           defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
            //     ),
            //   ),
            //   onPressed: () {},
            //   icon: Icon(Icons.add),
            //   label: Text("Add New"),
            // ),
          ],
        ),
        const SizedBox(height: defaultPadding),
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 3 : 4,
            childAspectRatio: _size.width < 650 ? 1.15 : 1,
          ),
          tablet: const FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
        children: <Widget>[
          // Sec One
          Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            elevation: 5,
            child: InkWell(
              splashColor: KColors.primary.withOpacity(0.3),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Gstn()));
              },
              child: Container(
                padding: const EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF007EE5).withOpacity(0.2),
                      const Color(0xFF007EE5).withOpacity(0.1)
                    ],
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(defaultPadding * 0.75),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFF007EE5).withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/Documents.svg",
                            color: primaryColor,
                          ),
                        ),
                        Icon(Icons.more_vert,
                            color: Colors.lightBlueAccent[700])
                      ],
                    ),
                    const Text(
                      "GSTIN",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                    // const ProgressLine(
                    //   color: Color(0xFF007EE5),
                    //   percentage: 35,
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Text(
                    //       "${1328} Files",
                    //       style: Theme.of(context)
                    //           .textTheme
                    //           .caption
                    //           .copyWith(color: Colors.black),
                    //     ),
                    //     Text(
                    //       "1.9GB",
                    //       style: Theme.of(context)
                    //           .textTheme
                    //           .caption
                    //           .copyWith(color: Colors.black),
                    //     ),
                    //   ],
                    // )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ITR()));
            },
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFFA113).withOpacity(0.2),
                      const Color(0xFFFFA113).withOpacity(0.1)
                    ],
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(defaultPadding * 0.75),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFA113).withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/google_drive.svg",
                            color: const Color(0xFFFFA113),
                          ),
                        ),
                        const Icon(Icons.more_vert, color: Color(0xFFFFA113))
                      ],
                    ),
                    const Text(
                      "ITR",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              // final result =
              await FilePicker.platform.pickFiles(allowMultiple: true);
              // if (result == null) return;
              //
              // openFiles(result.files);
              //
              // final file = result.files.first;
              // openFile(file);
              // print("Name: ${file.name}");
              // print("Bytes: ${file.bytes}");
              // print("Size:${file.size}");
              // print("path:${file.path}");
              //
              // final newFile = await saveFilePermanently(file);
              // print("From Path : ${file.path}");
              // print("To Path: ${newFile.path}");
            },
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FitnessAppTheme.nearlyDarkBlue.withOpacity(0.2),
                      FitnessAppTheme.nearlyDarkBlue.withOpacity(0.1)
                    ],
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(defaultPadding * 0.75),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color:
                                FitnessAppTheme.nearlyDarkBlue.withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/one_drive.svg",
                            color: FitnessAppTheme.nearlyDarkBlue,
                          ),
                        ),
                        const Icon(Icons.more_vert,
                            color: FitnessAppTheme.nearlyDarkBlue)
                      ],
                    ),
                    const Text(
                      "Sale",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Sec Two
          GestureDetector(
            onTap: () async {
              await FilePicker.platform.pickFiles(allowMultiple: true);
            },
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF007EE5).withOpacity(0.2),
                      const Color(0xFF007EE5).withOpacity(0.1)
                    ],
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(defaultPadding * 0.75),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFF007EE5).withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/drop_box.svg",
                            color: const Color(0xFF007EE5),
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.lightBlueAccent[700],
                        ),
                      ],
                    ),
                    const Text(
                      "Purchases",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const Gstn()));
            },
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFFA113).withOpacity(0.2),
                      const Color(0xFFFFA113).withOpacity(0.1)
                    ],
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(defaultPadding * 0.75),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFA113).withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/Documents.svg",
                            color: const Color(0xFFFFA113),
                          ),
                        ),
                        const Icon(Icons.more_vert, color: Color(0xFFFFA113))
                      ],
                    ),
                    const Text(
                      "E-Invoicing",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ITR()));
            },
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FitnessAppTheme.nearlyDarkBlue.withOpacity(0.2),
                      FitnessAppTheme.nearlyDarkBlue.withOpacity(0.1)
                    ],
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(defaultPadding * 0.75),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color:
                                FitnessAppTheme.nearlyDarkBlue.withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/google_drive.svg",
                            color: FitnessAppTheme.nearlyDarkBlue,
                          ),
                        ),
                        const Icon(Icons.more_vert,
                            color: FitnessAppTheme.nearlyDarkBlue)
                      ],
                    ),
                    const Text(
                      "Profit and Loss A/C",
                      // maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        // fontSize:10,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Sec Three
          GestureDetector(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const Gstn()));
            },
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF007EE5).withOpacity(0.2),
                      const Color(0xFF007EE5).withOpacity(0.1)
                    ],
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(defaultPadding * 0.75),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFF007EE5).withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/Documents.svg",
                            color: primaryColor,
                          ),
                        ),
                        Icon(Icons.more_vert,
                            color: Colors.lightBlueAccent[700])
                      ],
                    ),
                    const Text(
                      "Bank/Detail",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ITR()));
            },
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFFA113).withOpacity(0.2),
                      const Color(0xFFFFA113).withOpacity(0.1)
                    ],
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(defaultPadding * 0.75),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFA113).withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/google_drive.svg",
                            color: const Color(0xFFFFA113),
                          ),
                        ),
                        const Icon(Icons.more_vert, color: Color(0xFFFFA113))
                      ],
                    ),
                    const Text(
                      "Trading A/C",
                      // maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        // fontSize:10,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ITR()));
            },
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FitnessAppTheme.nearlyDarkBlue.withOpacity(0.2),
                      FitnessAppTheme.nearlyDarkBlue.withOpacity(0.1)
                    ],
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(defaultPadding * 0.75),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color:
                                FitnessAppTheme.nearlyDarkBlue.withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/google_drive.svg",
                            color: FitnessAppTheme.nearlyDarkBlue,
                          ),
                        ),
                        const Icon(Icons.more_vert,
                            color: FitnessAppTheme.nearlyDarkBlue)
                      ],
                    ),
                    const Text(
                      "Trading A/C",
                      // maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        // fontSize:10,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Sec four
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const EPayTax()));
            },
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF007EE5).withOpacity(0.2),
                      const Color(0xFF007EE5).withOpacity(0.1)
                    ],
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(defaultPadding * 0.75),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFF007EE5).withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/google_drive.svg",
                            color: const Color(0xFF007EE5),
                          ),
                        ),
                        Icon(Icons.more_vert,
                            color: Colors.lightBlueAccent[700])
                      ],
                    ),
                    const Text(
                      "Challan",
                      // maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        // fontSize:10,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ITR()));
            },
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFFA113).withOpacity(0.2),
                      const Color(0xFFFFA113).withOpacity(0.1)
                    ],
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(defaultPadding * 0.75),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFA113).withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/google_drive.svg",
                            color: const Color(0xFFFFA113),
                          ),
                        ),
                        const Icon(Icons.more_vert, color: Color(0xFFFFA113))
                      ],
                    ),
                    const Text(
                      "Bills",
                      // maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        // fontSize:10,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ITR()));
            },
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FitnessAppTheme.nearlyDarkBlue.withOpacity(0.2),
                      FitnessAppTheme.nearlyDarkBlue.withOpacity(0.1)
                    ],
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(defaultPadding * 0.75),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color:
                                FitnessAppTheme.nearlyDarkBlue.withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/google_drive.svg",
                            color: FitnessAppTheme.nearlyDarkBlue,
                          ),
                        ),
                        const Icon(Icons.more_vert,
                            color: FitnessAppTheme.nearlyDarkBlue)
                      ],
                    ),
                    const Text(
                      "Balance Sheet",
                      // maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        // fontSize:10,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
