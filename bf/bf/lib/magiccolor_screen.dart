import 'package:flutter/material.dart';
import 'home_screen.dart';

class MagicColorScreen extends StatefulWidget {
  const MagicColorScreen({Key? key}) : super(key: key);

  @override
  _MagicColorScreenState createState() => _MagicColorScreenState();
}

class _MagicColorScreenState extends State<MagicColorScreen> {
  Color? selectedColor;

  void _showBottomSheet() {
    Color? tempSelectedColor = selectedColor;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.37,
              padding: EdgeInsets.only(right: 10, left: 10, top: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'FAVORITE COLOR',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedColor = tempSelectedColor;
                          });
                          Navigator.pop(context);
                        },
                        child: Text(
                          'SELECT',
                          style: TextStyle(
                              color: Color(0xFF5E1B67),
                              fontFamily: 'bf',
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xFF5E1B67),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _colorBox(Colors.red, (Color color) {
                        setModalState(() => tempSelectedColor = color);
                      }, tempSelectedColor),
                      _colorBox(Colors.blue.shade900, (Color color) {
                        setModalState(() => tempSelectedColor = color);
                      }, tempSelectedColor),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _colorBox(Colors.green, (Color color) {
                        setModalState(() => tempSelectedColor = color);
                      }, tempSelectedColor),
                      _colorBox(Colors.yellow, (Color color) {
                        setModalState(() => tempSelectedColor = color);
                      }, tempSelectedColor),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _colorBox(Colors.black, (Color color) {
                        setModalState(() => tempSelectedColor = color);
                      }, tempSelectedColor),
                      _colorBox(Colors.white, (Color color) {
                        setModalState(() => tempSelectedColor = color);
                      }, tempSelectedColor),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _colorBox(
      Color colorx, Function(Color) onSelect, Color? selectedColor) {
    bool isSelected = selectedColor == colorx;
    return GestureDetector(
      onTap: () => onSelect(colorx),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: colorx,
          border: Border.all(color: Colors.grey),
        ),
        child: isSelected
            ? Icon(
                Icons.check,
                color: colorx.computeLuminance() > 0.5
                    ? Colors.black
                    : Colors.white,
                size: 30,
              )
            : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF5E1B67),
                size: 18,
              ),
            ),
            IconButton(
              icon: Image.asset(
                'assets/drawable/circle_f.png',
                width: 45,
                height: 45,
              ),
              onPressed: () {},
            ),
            Text('Magic of Colors',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'bf',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF5E1B67))),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xFF5E1B67),
                  width: 2.0,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                padding: EdgeInsets.only(top: 5, left: 5, right: 100),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Please Select your Favorite Color from the list',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[800],
                                fontFamily: 'bf',
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              '1:58 PM',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            // width: 30,
            child: Column(
              children: [
                OutlinedButton(
                  onPressed: _showBottomSheet,
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF5E1B67), width: 2),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 26),
                    minimumSize: Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      // side: BorderSide(
                      //   color: Color(0xFF5E1B67),
                      //   width: 6, // Increased from 4 to 6
                      // ),
                    ),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Spacer(),
                      Expanded(
                        child: Center(
                          child: Text(
                            'REPLY',
                            style: TextStyle(
                                color: Color(0xFF5E1B67),
                                fontSize: 17,
                                fontFamily: 'bf',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/drawable/action.png',
                        width: 28,
                        height: 28,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Image.asset(
                //       'assets/drawable/ic_story.png',
                //       width: 24,
                //       height: 24,
                //     ),
                //     SizedBox(width: 8),
                //     // Text(
                //     //   'Bottom Text',
                //     //   style: TextStyle(
                //     //     color: Color(0xFF5E1B67),
                //     //     fontSize: 14,
                //     //   ),
                //     // ),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
