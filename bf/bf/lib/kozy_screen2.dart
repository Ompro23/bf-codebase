import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KozyScreen2 extends StatelessWidget {
  const KozyScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              icon: Image.asset(
                'assets/drawable/ic_frd.png',
                width: 35,
                height: 35,
                color: Color(0xFF5E1B67),
              ),
              onPressed: () {},
            ),
            FutureBuilder(
              future: SharedPreferences.getInstance(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  final prefs = snapshot.data as SharedPreferences;
                  final name = prefs.getString('name') ?? 'Your Friend';
                  return Text(
                    name,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'bf',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5E1B67),
                    ),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Welcome to the next screen!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF5E1B67),
              fontFamily: 'bf',
            ),
          ),
        ),
      ),
    );
  }
}
