import 'package:flutter/material.dart';
import 'package:totem/widgets/video_player_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _opacity = 0.0;

  void handleVideoPlayReachedTenSeconds(bool isVisible) {
    setState(() {
      _opacity = isVisible ? 1.0 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/menu'),
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox.expand(
              child: VideoPlayerWidget(
                asset: 'assets/home.mp4',
                onVideoPlayReachedTenSeconds: handleVideoPlayReachedTenSeconds,
              ),
            ),
            if (_opacity > 0)
              Positioned(
                bottom: 300,
                left: 0,
                right: 0,
                child: Opacity(
                  opacity: _opacity,
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xFFF9BE2B),
                        padding: const EdgeInsets.fromLTRB(100, 20, 100, 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: const BorderSide(color: Colors.white, width: 6),
                        ),
                      ),
                      onPressed: () => Navigator.pushNamed(context, '/menu'),
                      child: const Text(
                        'Toque para entrar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'lucky',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
