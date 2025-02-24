import 'package:flutter/material.dart';
import 'home_screen.dart';

class DiaryMainScreen extends StatefulWidget {
  const DiaryMainScreen({super.key});

  @override
  State<DiaryMainScreen> createState() => _DiaryMainScreenState();
}

class _DiaryMainScreenState extends State<DiaryMainScreen> {
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
                              'I won\'t judge surely write and tell me whatever you feel like',
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
            child: Column(
              children: [
                OutlinedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(),
                      ),
                      builder: (BuildContext context) {
                        return Container(
                          color: Colors.white,
                          height: MediaQuery.of(context).size.height * 0.7,
                          padding: EdgeInsets.only(
                            left: 13,
                            right: 13,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '23-02-2025',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'SAVE',
                                      style: TextStyle(
                                          color: Color(0xFF5E1B67),
                                          fontFamily: 'bf',
                                          fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
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
                              SizedBox(height: 16),
                              TextField(
                                maxLines: 15,
                                decoration: InputDecoration(
                                  hintText: 'How was your Day..?',
                                  border: InputBorder.none,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF5E1B67), width: 2),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 26),
                    minimumSize: Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
