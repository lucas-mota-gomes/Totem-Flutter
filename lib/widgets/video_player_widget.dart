import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String asset;
  final Function onVideoPlayReachedTenSeconds;

  const VideoPlayerWidget({
    super.key,
    required this.asset,
    required this.onVideoPlayReachedTenSeconds,
  });

  @override
  // ignore: library_private_types_in_public_api
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  VideoPlayerController? _controller;
  bool _isTenSecondsReached = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.asset)
      ..initialize().then((_) {
        setState(() {});
        _controller!.setLooping(true);
        _controller!.play();
      }).catchError((error) {
        print('Error initializing video: $error');
      });

    _controller!.addListener(checkVideo);
  }

  void checkVideo() {
    final position = _controller?.value.position.inSeconds ?? 0;
    // final duration = _controller?.value.duration.inSeconds ?? 0;
    if (position >= 28 && !_isTenSecondsReached) {
      widget.onVideoPlayReachedTenSeconds(true);
      _isTenSecondsReached = true;
    }

    if (position < 28 && _isTenSecondsReached) {
      widget.onVideoPlayReachedTenSeconds(false);
      _isTenSecondsReached = false;
    }
  }

  @override
  void dispose() {
    _controller?.removeListener(checkVideo);
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller != null && _controller!.value.isInitialized
        ? AspectRatio(
            aspectRatio: _controller!.value.aspectRatio,
            child: VideoPlayer(_controller!),
          )
        : Container();
  }
}

