import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class YouTubeVidePlayerWidget extends StatefulWidget {
  final String url;
 const YouTubeVidePlayerWidget(this.url,{super.key});

  @override
  State<YouTubeVidePlayerWidget> createState() => _YouTubeVidePlayerState();
}

class _YouTubeVidePlayerState extends State<YouTubeVidePlayerWidget> {
  late YoutubePlayerController _controller;
  @override
  void initState(){
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.url)??"",
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        hideThumbnail: true,
        enableCaption: true,
      ),
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
          onReady: (){
           // setState((){});
          },
        ),
        // onExitFullScreen: ()=>goBack(),
        builder: (context, player) {
          return Column(
            children: [
              // some widgets
              player,
              //some other widgets
            ],
          );
        });

  }
}