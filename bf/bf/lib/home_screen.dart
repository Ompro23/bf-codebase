import 'package:bf/detailes_screen.dart' as details;
import 'package:bf/diary_screen.dart';
import 'package:bf/intrigue_screen.dart';
import 'package:bf/kozy_screen1.dart';
import 'package:bf/magiccolor_screen.dart';
import 'package:bf/profile_screen.dart';
import 'package:bf/store_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'games_screen.dart'; // Import the GamesScreen

class HomeScreen extends StatefulWidget {
  // Changed to StatefulWidget
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void main() {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue, // Change to any color
      statusBarIconBrightness:
          Brightness.light, // Use Brightness.dark for black icons
    ));
    runApp(HomeScreen());
  }

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
                  HomeScreen()), // Replace with the actual screen
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
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF5E1B67),
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 255, 254, 255),
              systemOverlayStyle: SystemUiOverlayStyle.light,
              title: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: const AssetImage('assets/images/logo.png'),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Hey There...!',
                    style: TextStyle(
                        fontFamily: 'bf',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF5E1B67)),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Image.asset('assets/drawable/film.png',
                                width: 30, height: 25),
                          ),
                          SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => details.DetailsScreen(),
                                ),
                              );
                            },
                            child: Image.asset('assets/drawable/settings.png',
                                width: 25, height: 25),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          body: ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Container(
                        // padding: EdgeInsets.all(12),
                        width: double.infinity,
                        height: 150,
                        margin: EdgeInsets.only(bottom: 16, top: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFF5E1B67),
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(15)),
                          border:
                              Border.all(color: Color(0xFF5E1B67), width: 1),
                        ),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                  width: 140,
                                  child: Image.asset(
                                    'assets/drawable/rlh1.PNG',
                                    // width: 150,
                                    // height: double.infinity,
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20),
                                    const Text(
                                      "Real Life Story",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'bf'),
                                    ),
                                    const SizedBox(
                                      width: 150,
                                      child: Text(
                                        "Storing to inspire, to motivate, to experience and to learn from.",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'bf'),
                                      ),
                                    ),
                                    const Spacer(),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  IntrigueScreen(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 12),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                bottomLeft:
                                                    Radius.circular(15)),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: const [
                                              Text(
                                                'INTRIGUE ME ',
                                                style: TextStyle(
                                                    color: Color(0xFF5E1B67),
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'bf'),
                                              ),
                                              Icon(
                                                Icons.arrow_forward_ios,
                                                size: 13,
                                                color: Color(0xFF5E1B67),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                  Container(
                    width: double.infinity,
                    height: 195,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Color(0xFFFEF6FF),
                      // borderRadius: BorderRadius.circular(15),
                      // border: Border.all(color: Color(0xFF5E1B67), width: 0),
                    ),
                    child: Expanded(
                        child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "User-Name",
                                style: TextStyle(
                                    color: Color(0xFF5E1B67),
                                    fontFamily: 'bf',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                              Text("User Description",
                                  style: TextStyle(
                                      color: Color(0xFF5E1B67),
                                      fontFamily: 'bf',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10)),
                              SizedBox(height: 10),
                              Text(
                                  "It is amazing to see you here! \nWelcome to Befriends,  You can call me Kozy!",
                                  style: TextStyle(
                                      fontFamily: 'bf',
                                      fontSize: 14,
                                      color: Color(0xFF5E1B67))),
                              SizedBox(
                                height: 12,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          // height: 1,
                          child: Container(
                            color: Color(0xFF5E1B67),
                            height: 1,
                            width: double.infinity,
                            // padding: EdgeInsets.symmetric(vertical: 2),
                            // margin: Edgeets.symmetric(vertical: 10),
                          ),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10, bottom: 2),
                                child: Text(
                                  "Do you believe in magic? I got one\nfor you Proof! Proof? Proof!!",
                                  style: TextStyle(
                                    fontFamily: 'bf',
                                    fontSize: 12,
                                    color: Color(0xFF5E1B67),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              MagicColorScreen(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(bottom: 12),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 8),
                                      decoration: BoxDecoration(
                                        color: Color(0xFF5E1B67),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomLeft: Radius.circular(15)),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            'START ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'bf'),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            size: 13,
                                            color: Color.fromARGB(
                                                255, 255, 253, 255),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 12, top: 10, bottom: 10),
                      width: double.infinity,
                      height: 170,
                      margin: EdgeInsets.only(bottom: 16, top: 10, right: 16),
                      decoration: BoxDecoration(
                        color: Color(0xFF5E1B67),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                        // border: Border.all(color: Color(0xFF5E1B67), width: 1),
                      ),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                                width: 140,
                                child: Image.asset(
                                  'assets/drawable/circle_f.png',
                                  // width: 150,
                                  // height: double.infinity,
                                )),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // const SizedBox(height: 20),
                                  const Text(
                                    "Kozy",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'bf'),
                                  ),
                                  const Text(
                                    "Virtual Friend",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'bf'),
                                  ),
                                  const SizedBox(
                                    width: 150,
                                    child: Text(
                                      "I am here to support you, help you and above all amke things better for you.",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'bf'),
                                    ),
                                  ),
                                  const Spacer(),
                                  SizedBox(
                                    height: 1,
                                    child: Container(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      height: 1,
                                      width: double.infinity,
                                      // padding: EdgeInsets.symmetric(vertical: 2),
                                      // margin: EdgeInsets.symmetric(vertical: 10),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => KozyScreen1(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 4),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomLeft: Radius.circular(15)),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: const [
                                            Text(
                                              'MY FRIEND ',
                                              style: TextStyle(
                                                  color: Color(0xFF5E1B67),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'bf'),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              size: 13,
                                              color: Color(0xFF5E1B67),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                  Container(
                      padding: EdgeInsets.only(left: 12, top: 10, bottom: 10),
                      width: double.infinity,
                      height: 170,
                      margin: EdgeInsets.only(
                          bottom: 16, top: 10, right: 16, left: 16),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 253, 253, 253),
                        // borderRadius: BorderRadius.only(
                        //     topRight: Radius.circular(15),
                        //     bottomRight: Radius.circular(15)),
                        // border: Border.all(color: Color(0xFF5E1B67), width: 1),
                      ),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                                width: 140,
                                height: 140,
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/drawable/boxed.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                )),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 20),
                                  const Text(
                                    "Our Products",
                                    style: TextStyle(
                                        color: Color(0xFF5E1B67),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'bf'),
                                  ),
                                  const Text(
                                    "Dedicated to your well-being",
                                    style: TextStyle(
                                        color: Color(0xFF5E1B67),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'bf'),
                                  ),
                                  // const SizedBox(
                                  //   width: 150,
                                  //   child: Text(
                                  //     "I am here to support you, help you and above all amke things better for you.",
                                  //     style: TextStyle(
                                  //         color: Color(0xFF5E1B67),
                                  //         fontSize: 10,
                                  //         fontWeight: FontWeight.w600,
                                  //         fontFamily: 'bf'),
                                  //   ),
                                  // ),
                                  // const Spacer(),

                                  SizedBox(
                                    height: 12,
                                  ),
                                  SizedBox(
                                    height: 1,
                                    child: Container(
                                      color: Color(0xFF5E1B67),
                                      height: 1,
                                      width: double.infinity,
                                      // padding: EdgeInsets.symmetric(vertical: 2),
                                      // margin: EdgeInsets.symmetric(vertical: 10),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => StoreScreen(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 4),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        decoration: const BoxDecoration(
                                          color: Color(0xFF5E1B67),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomLeft: Radius.circular(15)),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: const [
                                            Text(
                                              'VISIT STORE ',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 255, 252, 255),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'bf'),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              size: 13,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                  Container(
                      // padding: EdgeInsets.all(12),
                      width: double.infinity,
                      height: 150,
                      margin: EdgeInsets.only(
                        bottom: 20,
                        top: 10,
                        left: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF5E1B67),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                        border: Border.all(color: Color(0xFF5E1B67), width: 1),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: SizedBox(
                                  width: 100,
                                  child: Image.asset(
                                    'assets/drawable/meets.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 20),
                                  const Text(
                                    "A-Meets",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'bf'),
                                  ),
                                  const SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      "Open and Non-judgemental environment to SHARE.",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'bf'),
                                    ),
                                  ),
                                  const Spacer(),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 12),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomLeft: Radius.circular(15)),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: const [
                                            Text(
                                              'JOIN IN ',
                                              style: TextStyle(
                                                  color: Color(0xFF5E1B67),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'bf'),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              size: 13,
                                              color: Color(0xFF5E1B67),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
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
      ),
    );
  }
}
