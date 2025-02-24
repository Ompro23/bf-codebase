import 'package:bf/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF6FF), // Light purple background
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: 180,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF5E1B67),
                            // Purple
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "LISTENER LOGIN",
                                style: TextStyle(
                                    color: Colors.white,
                                    height: 4,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                    fontFamily: 'bf'),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 12,
                              ),
                            ],
                          )),
                    )),
              ),
              const SizedBox(height: 60),
              Image.asset(
                "assets/drawable/w4.png", // Replace with your koala image
                height: 200,
              ),
              const SizedBox(height: 20),
              Padding(
                  padding: const EdgeInsets.only(left: 42, right: 40),
                  child: Align(
                      // alignment: Alignment.centerLeft,
                      child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "WELCOME",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'bf',
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF5E1B67), // Purple text
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Come on in, I have got some exciting stuff!",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF5E1B67),
                              fontFamily: 'bf' // Purple text
                              ),
                        ),
                      ),
                    ],
                  ))),
              const SizedBox(height: 20),
              const SizedBox(height: 50),
              const Text(
                "By Logging in, You agree to our",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12, color: Colors.black, fontFamily: 'bf'),
              ),
              const Text(
                "Terms of Use & Privacy Policy",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF5E1B67),
                    fontFamily: 'bf',
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Container(
                    width: 270,
                    // color: Colors.white,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black45),
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF5E1B67)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("GOOGLE",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontFamily: 'bf',
                                fontWeight: FontWeight.w600)),
                        const SizedBox(width: 90),
                        Image.asset(
                          "assets/drawable/ic_google.png",
                          height: 20,
                          color: Colors.white,
                        ),
                      ],
                    )),
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {},
                child: Container(
                    width: 270,
                    // color: Colors.white,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Color(0xFF5E1B67), width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF8EFFF)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "ANONYMOUS",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color(0xFF5E1B67),
                              fontFamily: 'bf',
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(width: 50),
                        Image.asset(
                          "assets/drawable/ic_anonymous.png",
                          height: 20,
                          color: Color(0xFF5E1B67),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  const LoginButton(
      {super.key, required this.text, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {},
      icon: Icon(icon, color: Colors.white),
      label: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
