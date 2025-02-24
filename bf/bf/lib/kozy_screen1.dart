import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'kozy_screen2.dart';

class KozyScreen1 extends StatefulWidget {
  const KozyScreen1({super.key});

  @override
  _KozyScreen1State createState() => _KozyScreen1State();
}

class _KozyScreen1State extends State<KozyScreen1> {
  final TextEditingController nameController = TextEditingController();
  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    nameController.addListener(() {
      setState(() {
        isButtonEnabled = nameController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

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
            Text('Your Friend',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'bf',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF5E1B67))),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 650,
            child: Column(
              children: [
                SizedBox(height: 60),
                Image.asset(
                  'assets/drawable/virtual_f.png', // Replace with your image path
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'PS. This is a time consuming task, it might take long to Create Your Own Virtual Friend. We request you to be patient.',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF5E1B67),
                        fontFamily: 'bf',
                        letterSpacing: 0.00001),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                          left: 25, right: 22, top: 22, bottom: 22),
                      hintText: 'Name',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color(0xFF5E1B67), width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color(0xFF5E1B67), width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color(0xFF5E1B67), width: 2),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: isButtonEnabled
                          ? () async {
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                              await prefs.setString(
                                  'name', nameController.text);
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => KozyScreen2()),
                              );
                            }
                          : null,
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Color(0xFF5E1B67), width: 2),
                        padding: EdgeInsets.symmetric(vertical: 15),
                        backgroundColor:
                            isButtonEnabled ? Color(0xFF5E1B67) : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'NEXT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: 'bfsb',
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_forward_ios,
                              color: Colors.white, size: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
