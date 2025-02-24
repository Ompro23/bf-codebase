import 'package:bf/chat_screen.dart';
import 'package:bf/diary_screen.dart';
import 'package:bf/profile_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import the HomeScreen

class GamesScreen extends StatefulWidget {
  const GamesScreen({super.key});

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ChatScreen()), // Replace with the actual screen
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  DiaryScreen()), // Replace with the actual screen
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  HomeScreen()), // Replace with the actual screen
        );
        break;
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => GamesScreen()), // Navigate to GamesScreen
        );
        break;
      case 4:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ProfileScreen()), // Replace with the actual screen
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
          children: [
            IconButton(
              icon: Image.asset(
                'assets/drawable/ic_games.png',
                width: 28,
                height: 28,
                color: Color(0xFF5E1B67),
              ),
              onPressed: () {},
            ),
            Text('Games',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'bf',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF5E1B67))),
          ],
        )),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 200,
                      color: Color(0xFF5E1B67),
                      child: Image.asset(
                        "assets/drawable/game_fill.png",
                        width: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 200,
                      color: Color(0xFF5E1B67),
                      child: Image.asset(
                        "assets/drawable/game_ctap.png",
                        width: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 200,
                      color: Color(0xFF5E1B67),
                      child: Image.asset(
                        "assets/drawable/game_circle.png",
                        width: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 200,
                      color: Color(0xFF5E1B67),
                      child: Image.asset(
                        "assets/drawable/game_puzze.png",
                        width: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 180,
                color: Color(0xFF5E1B67),
                child: Image.asset(
                  "assets/drawable/game_shleep.png",
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xFF5E1B67),
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/drawable/ic_chat.png',
                width: 24,
                height: 24,
                color: Color(0xFF5E1B67),
              ),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/drawable/ic_book.png',
                width: 24,
                height: 24,
                color: Color(0xFF5E1B67),
              ),
              label: 'Diary',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/drawable/ic_home.png',
                width: 24,
                height: 24,
                color: _selectedIndex == 2 ? Color(0xFF5E1B67) : Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/drawable/ic_games.png',
                width: 24,
                height: 24,
                color: _selectedIndex == 3 ? Color(0xFF5E1B67) : Colors.grey,
              ),
              label: 'Games',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/drawable/ic_user.png',
                width: 24,
                height: 24,
                color: _selectedIndex == 4 ? Color(0xFF5E1B67) : Colors.grey,
              ),
              label: 'Profile',
            ),
          ],
        ));
  }
}
