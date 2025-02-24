import 'package:bf/chat_screen.dart';
import 'package:bf/diary_main_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import the HomeScreen
import 'games_screen.dart'; // Import the GamesScreen
import 'profile_screen.dart'; // Import the ProfileScreen

class DiaryScreen extends StatefulWidget {
  const DiaryScreen({super.key});

  @override
  State<DiaryScreen> createState() => _DiaryScreenState();
}

class _DiaryScreenState extends State<DiaryScreen> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => ChatScreen()), // Navigate to HomeScreen
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => DiaryScreen()), // Navigate to DiaryScreen
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreen()), // Navigate to HomeScreen
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
                  ProfileScreen()), // Navigate to ProfileScreen
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
                'assets/drawable/ic_book.png',
                width: 30,
                height: 30,
                color: Color(0xFF5E1B67),
              ),
              onPressed: () {},
            ),
            Text('Le Chronicles de',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'bf',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF5E1B67))),
          ],
        ),
        actions: [
          IconButton(
            icon:
                Image.asset('assets/drawable/newa.png', width: 30, height: 30),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        DiaryMainScreen()), // Navigate to ChatScreen
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Jan',
                  style: TextStyle(
                      fontSize: 17, color: Color(0xFF5E1B67), fontFamily: 'bf'),
                ),
                SizedBox(width: 20),
                Text(
                  '2025',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFF5E1B67),
                    fontFamily: 'bf',
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  'GET',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'bf',
                    color: Color(0xFF5E1B67),
                  ),
                ),
                SizedBox(width: 15),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 60),
            height: 2.5,
            color: Color(0xFF5E1B67),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 70,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF5E1B67),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                  ),
                  child: Text(
                    '14',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 252, 251, 252),
                        fontFamily: 'bf'),
                  ),
                ),
                Container(
                  width: 70,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
                  decoration: BoxDecoration(
                    color: Color(0xFFF3EBF5),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                  ),
                  child: Text(
                    '02-25',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF5E1B67),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(), // Add this to push the container to the bottom
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            margin: const EdgeInsets.only(
                top: 8.0, bottom: 10.0), // Added bottom margin
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 6.0, bottom: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'I am no peeping..!',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF5E1B67),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'bf',
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Only worried if you\ncontinued your\nchronicles or not',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF5E1B67),
                            fontFamily: 'bf',
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20, right: 10, left: 10),
                  child: Image.asset(
                    'assets/drawable/circle_f.png',
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
        ],
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
      ),
    );
  }
}
