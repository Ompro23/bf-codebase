import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'home_screen.dart';

class ReelScreen extends StatefulWidget {
  const ReelScreen({super.key});

  @override
  _ReelScreenState createState() => _ReelScreenState();
}

class _ReelScreenState extends State<ReelScreen> {
  late List<VideoPlayerController> _controllers;
  int _currentReelIndex = 0;
  List<bool> _isLikedList = [];
  List<int> _likeCountList = [];
  final List<String> _reelUrls = [
    'https://assets.mixkit.co/videos/preview/mixkit-tree-with-yellow-flowers-1173-large.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
  ];

  @override
  void initState() {
    super.initState();
    _isLikedList = List.generate(_reelUrls.length, (index) => false);
    _likeCountList = List.generate(_reelUrls.length, (index) => 0);
    _controllers = _reelUrls.map((url) {
      var controller = VideoPlayerController.network(url);
      controller.initialize().then((_) {
        if (mounted) setState(() {});
      });
      return controller;
    }).toList();

    // Play the first video
    _controllers.first.play();
    _controllers.first.setLooping(true);
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _onReelChanged(int index) {
    if (index != _currentReelIndex) {
      _controllers[_currentReelIndex].pause();
      _controllers[index].play();
      _controllers[index].setLooping(true);
      setState(() {
        _currentReelIndex = index;
      });
    }
  }

  void _handleLike(int index) {
    setState(() {
      _isLikedList[index] = !_isLikedList[index];
      if (_isLikedList[index]) {
        _likeCountList[index]++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF5E1B67),
                size: 18,
              ),
            ),
            IconButton(
              icon: Image.asset(
                'assets/drawable/circle_f.png',
                width: 45,
                height: 45,
              ),
              onPressed: () {},
            ),
            Text('Reels',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'bf',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF5E1B67))),
            Spacer(),
            IconButton(
              icon: Image.asset(
                'assets/drawable/info.png',
                width: 24,
                height: 24,
                color: Color(0xFF5E1B67),
              ),
              onPressed: () {
                // Add your info action here
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: _reelUrls.length,
            onPageChanged: _onReelChanged,
            itemBuilder: (context, index) {
              return _controllers[index].value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controllers[index].value.aspectRatio,
                      child: Stack(
                        children: [
                          VideoPlayer(_controllers[index]),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (_controllers[index].value.isPlaying) {
                                  _controllers[index].pause();
                                } else {
                                  _controllers[index].play();
                                }
                              });
                            },
                            child: Container(
                              color: Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    )
                  : const Center(
                      child: CircularProgressIndicator(
                        color: Color(0xFF5E1B67),
                      ),
                    );
            },
          ),
          Positioned(
            left: 10,
            top: 50,
            bottom: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _reelUrls.length,
                (index) => Container(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  width: 5,
                  height: 30,
                  decoration: BoxDecoration(
                    color: index == _currentReelIndex
                        ? Color(0xFF5E1B67)
                        : Colors.grey,
                    gradient: _likeCountList[index] > 0
                        ? LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color(0xFF5E1B67),
                              Colors.grey,
                            ],
                            stops: [
                              _likeCountList[index] / 10, // Max likes threshold
                              _likeCountList[index] / 10,
                            ],
                          )
                        : null,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    _isLikedList[_currentReelIndex]
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.white,
                    size: 60,
                  ),
                  onPressed: () => _handleLike(_currentReelIndex),
                ),
                SizedBox(width: 8),
                Text(
                  _likeCountList[_currentReelIndex] > 0
                      ? '${_likeCountList[_currentReelIndex]} Likes'
                      : 'Like',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'bfsb',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
