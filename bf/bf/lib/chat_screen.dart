import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_screen.dart'; // Import the HomeScreen
import 'games_screen.dart'; // Import the GamesScreen
import 'profile_screen.dart'; // Import the ProfileScreen
import 'diary_screen.dart'; // Import the DiaryScreen
import 'listeners_chatscreen.dart'; // Import the ChatDetailsScreen

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int _selectedIndex = 0;

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
                'assets/drawable/ic_chat.png',
                width: 30,
                height: 30,
                color: Color(0xFF5E1B67),
              ),
              onPressed: () {},
            ),
            Text('Recent Chats',
                style: TextStyle(
                    fontSize: 18,
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
              // Add your action icon functionality here
            },
          ),
        ],
      ),
      body: _buildChatList().isEmpty
          ? Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  bottom: 2,
                  right: 10,
                  left: 10,
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.bottomCenter,
                    children: [
                      Center(
                        child: Container(
                          width: double.infinity,
                          height: 300,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            // color: Color(0xFF5E1B67),
                          ),
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          'assets/drawable/taffysleep.png',
                          width: 300,
                          height: 300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemCount: _buildChatList().length,
              itemBuilder: (context, index) {
                final chat = _buildChatList()[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(chat.avatarPath),
                  ),
                  title: Text(
                    chat.name,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'bfsb',
                        // fontWeight: FontWeight.w500,
                        color: Color(0xFF5E1B67)),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.check,
                        size: 13,
                        color: Color(0xFF5E1B67),
                      ),
                      SizedBox(width: 4),
                      Expanded(
                          child: Text(
                        chat.lastMessage,
                        style: TextStyle(
                            fontFamily: 'bf',
                            fontSize: 12,
                            color: Colors.grey.shade600),
                      )),
                    ],
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        chat.date,
                        style: TextStyle(fontSize: 9, color: Colors.grey),
                      ),
                      Text(
                        chat.time,
                        style: TextStyle(fontSize: 9, color: Colors.grey),
                      ),
                    ],
                  ),
                  onTap: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    await prefs.setString('selectedChatUser', chat.name);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatDetailsScreen()),
                    );
                  },
                );
              },
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

List<ChatItem> _buildChatList() {
  // Return an empty list for now
  return [
    ChatItem(
        avatarPath: 'assets/drawable/avatar1.png',
        name: 'blazeX',
        lastMessage: 'Hey, how are you?',
        date: '10-2-2025',
        time: '10:30 AM'),
    ChatItem(
        avatarPath: 'assets/drawable/avatar1.png',
        name: 'dummy',
        lastMessage: 'See you soon!',
        date: '10-2-2025',
        time: '11:00 AM')
  ];
}

class ChatItem {
  final String avatarPath;
  final String name;
  final String lastMessage;
  final String date;
  final String time;

  ChatItem({
    required this.avatarPath,
    required this.name,
    required this.lastMessage,
    required this.date,
    required this.time,
  });
}
