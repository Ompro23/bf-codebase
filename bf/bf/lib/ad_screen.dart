import 'package:flutter/material.dart';
import 'dart:async';

class AdScreen extends StatefulWidget {
  const AdScreen({super.key});

  @override
  _AdScreenState createState() => _AdScreenState();
}

class _AdScreenState extends State<AdScreen> {
  int _countdown = 5;
  bool _showProceedButton = false;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_countdown == 0) {
        setState(() {
          _showProceedButton = true;
        });
        timer.cancel();
      } else {
        setState(() {
          _countdown--;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: Image.asset(
              'assets/drawable/taffyover.png',
              width: 200,
              height: 50,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'This Ad is the fuel that keeps my engine running.',
              style: TextStyle(
                  fontSize: 16, color: Color(0xFF5E1B67), fontFamily: 'bfsb'),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(
              'assets/drawable/experts.png',
              width: 400,
              height: 400,
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _showProceedButton
                    ? () {
                        // Add your proceed action here
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5E1B67),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  _showProceedButton
                      ? 'Proceed'
                      : 'Please wait $_countdown seconds',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
