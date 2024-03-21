// import 'package:abovhack/SocialMedia/Customise%20Widget/VideoPageOptionsScreen.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
// import 'package:chewie/chewie.dart';

// class ContentScreenPage extends StatefulWidget {
//   const ContentScreenPage({super.key});

//   @override
//   State<ContentScreenPage> createState() => _ContentScreenPageState();
// }

// class _ContentScreenPageState extends State<ContentScreenPage> {
//   late VideoPlayerController _videoPlayerController;
//   late ChewieController _chewieController;
//   late Future<void> _initializePlayerFuture;

//   @override
//   void initState() {
//     super.initState();
//     initializePlayer();
//   }

//   Future<void> initializePlayer() async {
//     _videoPlayerController = VideoPlayerController.networkUrl(
//         Uri.parse('https://example.com/api/fetch?limit=10,20,30&max=100'));

//     await _videoPlayerController.initialize();
//     _chewieController = ChewieController(
//       videoPlayerController: _videoPlayerController,
//       autoPlay: true,
//     );
//     setState(() {}); // Trigger a rebuild after initialization
//   }

//   @override
//   void dispose() {
//     _videoPlayerController.dispose();
//     _chewieController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: _initializePlayerFuture,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         } else if (snapshot.hasError) {
//           return Center(
//             child: Text('Error initializing video player'),
//           );
//         } else {
//           return Stack(
//             fit: StackFit.expand,
//             children: [
//               Chewie(
//                 controller: _chewieController,
//               ),
//               VideoPageOptionsScreen(),
//             ],
//           );
//         }
//       },
//     );
//   }
// }
