import 'package:bf/chat_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import the HomeScreen
import 'games_screen.dart'; // Import the GamesScreen

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 4;
  bool _isEditable = false;

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
              builder: (context) => HomeScreen()), // Navigate to HomeScreen
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

  void _toggleEdit() {
    setState(() {
      _isEditable = !_isEditable;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: Image.asset(
                'assets/drawable/ic_user.png',
                width: 28,
                height: 28,
                color: Color(0xFF5E1B67),
              ),
              onPressed: () {},
            ),
            Text(
              'My Profile',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'bf',
                fontWeight: FontWeight.w500,
                color: Color(0xFF5E1B67),
              ),
            ),
            Spacer(), // This will push the icon to the right
            IconButton(
              icon: Image.asset(
                'assets/drawable/pencil.png',
                width: 24,
                height: 28,
                color: Color(0xFF5E1B67),
              ),
              onPressed: _toggleEdit,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  // color: Color(0xFF5E1B67),
                  border: Border.all(color: Color(0xFF5E1B67), width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Color(0xFF5E1B67),
                        child: Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Username',
                          style: TextStyle(
                              color: Color(0xFF5E1B67),
                              fontSize: 18,
                              fontFamily: 'bf',
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'omvataliya23@gmail.com',
                          style: TextStyle(
                            color: Color(0xFF5E1B67),
                            fontSize: 12,
                            fontFamily: 'bf',
                          ),
                        ),
                        Text(
                          'Description',
                          style: TextStyle(
                            color: Color(0xFF5E1B67),
                            fontSize: 12,
                            fontFamily: 'bf',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 80,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF5E1B67), width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/drawable/uname.png',
                        width: 24,
                        height: 24,
                        // color: Color(0xFF5E1B67),
                      ),
                      SizedBox(width: 20),
                      Text(
                        // 'Nickname: ${_isEditable ? 'Editable' : 'Not Editable'}',
                        'Nickname',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'bf',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 116,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF5E1B67), width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/drawable/ic_gender.png',
                            width: 24,
                            height: 24,
                            // color: Color(0xFF5E1B67),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Your Gender',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontFamily: 'bf',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 22),
                      Row(
                        children: [
                          Row(
                            children: [
                              Transform.scale(
                                scale: 1.2,
                                child: Checkbox(
                                  value: false,
                                  onChanged:
                                      _isEditable ? (bool? value) {} : null,
                                  shape: CircleBorder(),
                                  side: BorderSide(
                                    color: Color(0xFF5E1B67),
                                    width: 2,
                                  ),
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  visualDensity: VisualDensity.compact,
                                ),
                              ),
                              Text('Male', style: TextStyle(height: 1)),
                            ],
                          ),
                          SizedBox(width: 20),
                          Row(
                            children: [
                              Transform.scale(
                                scale: 1.2,
                                child: Checkbox(
                                  value: false,
                                  onChanged:
                                      _isEditable ? (bool? value) {} : null,
                                  shape: CircleBorder(),
                                  side: BorderSide(
                                    color: Color(0xFF5E1B67),
                                    width: 2,
                                  ),
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  visualDensity: VisualDensity.compact,
                                ),
                              ),
                              Text('Female', style: TextStyle(height: 1)),
                            ],
                          ),
                          SizedBox(width: 20),
                          Row(
                            children: [
                              Transform.scale(
                                scale: 1.2,
                                child: Checkbox(
                                  value: false,
                                  onChanged:
                                      _isEditable ? (bool? value) {} : null,
                                  shape: CircleBorder(),
                                  side: BorderSide(
                                    color: Color(0xFF5E1B67),
                                    width: 2,
                                  ),
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  visualDensity: VisualDensity.compact,
                                ),
                              ),
                              Text('Other', style: TextStyle(height: 1)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 70,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF5E1B67), width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/drawable/ic_dob.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Date of Birth',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'bf',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 110,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF5E1B67), width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/drawable/ic_hobby.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Hobbies',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontFamily: 'bf',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'My Hobbies',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'bf',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 70,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF5E1B67), width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/drawable/ic_location.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Location',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'bf',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 70,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  // border: Border.all(color: Color(0xFF5E1B67), width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Want to get rewarded for spreading the word around?\nClick here',
                    style: TextStyle(
                      color: Color(0xFF5E1B67),
                      fontSize: 12,
                      fontFamily: 'bf',
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
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
      ),
    );
  }
}
