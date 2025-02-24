import 'package:bf/detailes_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/services.dart';

class WalkthroughScreen extends StatefulWidget {
  const WalkthroughScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<WalkthroughScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF5E1B67),
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }

  final listPagesViewModel = [
    PageViewModel(
      title: "",
      bodyWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Positioned(
                    top: 100,
                    child: Image.asset(
                      'assets/drawable/w1.png',
                      height: 200,
                      width: 200,
                    )),
                SizedBox(height: 50),
                Text("Heart-To-Heart",
                    style: TextStyle(
                      fontSize: 26.0,
                      color: Color.fromARGB(255, 87, 18, 99),
                    )),
              ],
            ),
          ),
          SizedBox(height: 5),
          Center(
            child: Text(
              "Chat with our Listerners as well as the Emotionally available Virtual Friends that you can create.",
              style: TextStyle(fontSize: 12.0),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      // image: Positioned(
      //     top: 100,
      //     child: Center(
      //         child: Image.asset(
      //       'assets/drawable/onext.png',
      //       height: 200,
      //       width: 200,
      //     ))),
      decoration: const PageDecoration(
          pageColor: Color(0xFFFEF6FF), imagePadding: EdgeInsets.all(0.0)),
    ),
    PageViewModel(
      title: "",
      bodyWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Positioned(
                    top: 100,
                    child: Image.asset(
                      'assets/drawable/w2.png',
                      height: 200,
                      width: 200,
                    )),
                SizedBox(height: 50),
                Text("Your Chonicles",
                    style: TextStyle(
                      fontSize: 26.0,
                      color: Color.fromARGB(255, 87, 18, 99),
                    )),
              ],
            ),
          ),
          SizedBox(height: 5),
          Center(
            child: Text(
              "Build up your story by making regular entry in your diary and lighten your meed with short clips and products from our store.",
              style: TextStyle(fontSize: 12.0),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      // image: Positioned(
      //     top: 100,
      //     child: Center(
      //         child: Image.asset(
      //       'assets/drawable/onext.png',
      //       height: 200,
      //       width: 200,
      //     ))),
      decoration: const PageDecoration(
          pageColor: Color(0xFFFEF6FF), imagePadding: EdgeInsets.all(0.0)),
    ),
    PageViewModel(
      title: "",
      bodyWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Positioned(
                    top: 100,
                    child: Image.asset(
                      'assets/drawable/w3.png',
                      height: 200,
                      width: 200,
                    )),
                SizedBox(height: 50),
                Text("Hyper or Casual?",
                    style: TextStyle(
                      fontSize: 26.0,
                      color: Color.fromARGB(255, 87, 18, 99),
                    )),
              ],
            ),
          ),
          SizedBox(height: 5),
          Center(
            child: Text(
              "Immerse yourself in Hyper-casual games,don't forget to check out for regular game tournaments.",
              style: TextStyle(fontSize: 12.0),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      decoration: const PageDecoration(
          pageColor: Color(0xFFFEF6FF), imagePadding: EdgeInsets.all(0.0)),
    ),
    PageViewModel(
      title: "",
      bodyWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Positioned(
                    top: 100,
                    child: Image.asset(
                      'assets/drawable/w4.png',
                      height: 200,
                      width: 200,
                    )),
                SizedBox(height: 50),
                Text("Meet KOZY!",
                    style: TextStyle(
                      fontSize: 26.0,
                      color: Color.fromARGB(255, 87, 18, 99),
                    )),
              ],
            ),
          ),
          SizedBox(height: 5),
          Center(
            child: Text(
              "Don't forget to befriend Kozy it's always gonna be here for you. Pinky Promise.. :)",
              style: TextStyle(fontSize: 12.0),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 90,
          ),
          DelayedDisplay(
              delay: Duration(seconds: 1),
              child: Center(
                  child: Positioned(
                      child: Builder(
                          builder: (context) => OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 87, 18, 99),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 10),
                                  textStyle: TextStyle(fontSize: 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  )),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailsScreen()));
                              },
                              child: Text("Lets Get Started",
                                  style: TextStyle(color: Colors.white))))))),
        ],
      ),
      decoration: const PageDecoration(
          pageColor: Color(0xFFFEF6FF), imagePadding: EdgeInsets.all(0.0)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF5E1B67),
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: Stack(
          children: [
            IntroductionScreen(
              key: introKey,
              pages: listPagesViewModel,
              showNextButton: true,
              showDoneButton: false,
              showSkipButton: false,
              dotsFlex: 1,
              isProgress: false,
              next: Container(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'assets/drawable/onext.png',
                  height: 35,
                  color: const Color.fromARGB(255, 87, 18, 99),
                ),
              ),
              done: const Text("Done"),
              onDone: () {
                // When done button is press
              },
              doneStyle: TextButton.styleFrom(foregroundColor: Colors.green),
              nextStyle: TextButton.styleFrom(),
              onChange: (index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
            Positioned(
              top: 0,
              right: 0,
              child: SafeArea(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen()));
                  },
                  style: TextButton.styleFrom(),
                  child: Row(
                    children: [
                      const Text("SKIP",
                          style: TextStyle(
                              color: Color.fromARGB(255, 87, 18, 99))),
                      Image.asset(
                        'assets/drawable/dtick.png',
                        height: 35,
                        width: 35,
                        color: const Color.fromARGB(255, 87, 18, 99),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 35,
              left: 30,
              child: Row(
                children: List.generate(
                  listPagesViewModel.length,
                  (index) => GestureDetector(
                    onTap: () {
                      introKey.currentState?.animateScroll(index);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      width: 8.0,
                      height: 8.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentPage == index
                            ? Color.fromARGB(255, 87, 18, 99)
                            : Colors.grey,
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
