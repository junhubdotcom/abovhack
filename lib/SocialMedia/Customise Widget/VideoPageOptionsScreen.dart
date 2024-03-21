// import 'package:flutter/material.dart';

// class VideoPageOptionsScreen extends StatefulWidget {
//   VideoPageOptionsScreen({Key? key});

//   @override
//   State<VideoPageOptionsScreen> createState() => _VideoPageOptionsScreenState();
// }

// class _VideoPageOptionsScreenState extends State<VideoPageOptionsScreen> {
//   int index = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           SizedBox(),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(height: 70.0),
//                   Row(
//                     children: [
//                       CircleAvatar(
//                         backgroundImage: NetworkImage(
//                           listOfProfilePics[
//                               index++], // Use modulo operator to cycle through the list
//                         ),
//                         radius: 16,
//                       ),
//                       SizedBox(width: 6),
//                       Text('Amelia Johnson',
//                           style: TextStyle(
//                               fontSize: 12.0, fontWeight: FontWeight.bold)),
//                       SizedBox(width: 6),
//                       Text('7min ago', style: TextStyle(fontSize: 10.0)),
//                       SizedBox(width: 6),
//                       ElevatedButton(
//                         onPressed: () {},
//                         child: Text(
//                           'Follow',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Color(0xff7ecfe0),
//                           padding: EdgeInsets.all(0),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Text("Investing 101: Start Small, Think Big ",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 15.0)),
//                   Text(
//                       "Dive into the world of investing and watch your money grow!",
//                       style: TextStyle(fontSize: 12.0)),
//                   Text("#InvestingTips #FinancialFreedom",
//                       style: TextStyle(fontSize: 12.0)),
//                   // SizedBox(height: 10.0),
//                 ],
//               ),
//               Column(
//                 children: [
//                   Icon(Icons.favorite_border_outlined, size: 50.0),
//                   SizedBox(height: 20.0),
//                   Icon(Icons.comment_outlined, size: 50.0),
//                   SizedBox(height: 20.0),
//                   Icon(Icons.star_border_outlined, size: 50.0),
//                   SizedBox(height: 20.0),
//                   Icon(Icons.share, size: 50.0),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
