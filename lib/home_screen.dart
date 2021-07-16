import 'package:flutter/material.dart';
import 'package:video_flutter_sample/video_items.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Flutter Video Player Demo'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          VideoItems(
            key: ValueKey('v1'),
            videoPlayerController: VideoPlayerController.asset(
              'assets/v1.mp4',
            ),
            looping: true,
            autoplay: true,
          ),
          VideoItems(
            key: ValueKey('net'),
            videoPlayerController: VideoPlayerController.network(
                'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'),
            looping: false,
            autoplay: true,
          ),
          VideoItems(
            key: ValueKey('v2'),
            videoPlayerController: VideoPlayerController.asset(
              'assets/v2.mp4',
            ),
            looping: false,
            autoplay: false,
          ),
          VideoItems(
            key: ValueKey('v3'),
            videoPlayerController: VideoPlayerController.asset(
              'assets/v3.mp4',
            ),
            autoplay: true,
          ),
          VideoItems(
            key: ValueKey('netv4'),
            videoPlayerController: VideoPlayerController.network(
                "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4"),
            looping: true,
            autoplay: false,
          ),
        ],
      ),
    );
  }
}
