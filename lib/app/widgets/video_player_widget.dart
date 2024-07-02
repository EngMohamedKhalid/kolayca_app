// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// import '../utils/helper.dart';
//
//
// /// Stateful widget to fetch and then display video content.
// class VideoPlayerWidget extends StatefulWidget {
//   final String videoUrl;
//   final String title;
//   const VideoPlayerWidget({
//     required this.videoUrl,
//     required this.title,
//     super.key});
//
//   @override
//   State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
// }
//
// class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
//   @override
//   void initState() {
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.landscapeRight,
//       DeviceOrientation.landscapeLeft,
//     ]);
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return PopScope(
//       onPopInvoked: (value){
//         SystemChrome.setPreferredOrientations([
//           DeviceOrientation.portraitUp,
//         ]);
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           leading: IconButton(
//             onPressed: ()=>goBack(),
//             icon: Icon(Icons.arrow_back_ios,color: Colors.grey,),
//           ),
//         ),
//         body:widget.videoUrl.contains("youtube")?YouTubeVidePlayerWidget(widget.videoUrl):GoogleDriveVideoPlayer(widget.videoUrl)
//         // floatingActionButton: FloatingActionButton(
//         //   onPressed: () {
//         //     setState(() {
//         //       _controller.value.isPlaying
//         //           ? _controller.pause()
//         //           : _controller.play();
//         //     });
//         //   },
//         //   child: Icon(
//         //     _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//         //   ),
//         // ),
//       ),
//     );
//   }
// }
//
//
//
//
