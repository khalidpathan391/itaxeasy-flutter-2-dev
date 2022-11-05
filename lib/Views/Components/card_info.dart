
import 'package:flutter/material.dart';

import 'constants.dart';

// class FileInfoCard extends StatelessWidget {
//   const FileInfoCard({
//     Key key,
//     this.info,
//   }) : super(key: key);
//
//   final CloudStorageInfo info;
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 5,
//       child: Container(
//         padding: EdgeInsets.all(defaultPadding),
//         decoration: BoxDecoration(
//           color: Colors.white,
//
//           borderRadius: const BorderRadius.all(Radius.circular(10)),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(defaultPadding * 0.75),
//                   height: 40,
//                   width: 40,
//                   decoration: BoxDecoration(
//                     color:  Color(0xFF007EE5).withOpacity(0.1),
//                     borderRadius: const BorderRadius.all(Radius.circular(10)),
//                   ),
//                   child: SvgPicture.asset("assets/icons/drop_box.svg", color:  Color(0xFF007EE5),),
//                 ),
//                 Icon(Icons.more_vert, color: Colors.lightBlueAccent[700])
//               ],
//             ),
//             Text(
//               info.title,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//             ProgressLine(
//               color: Color(0xFF007EE5),
//               percentage: 78,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "${5328} Files",
//                   style: Theme.of(context)
//                       .textTheme
//                       .caption
//                       .copyWith(color: Colors.black),
//                 ),
//                 Text("7.3GB",
//                   style: Theme.of(context)
//                       .textTheme
//                       .caption
//                       .copyWith(color: Colors.black),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key key,
    this.color = primaryColor,
    this.percentage,
  }) : super(key: key);

  final Color color;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage / 100),
            height: 5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}
