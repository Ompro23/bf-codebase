import 'package:bf/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChatDetailsScreen extends StatefulWidget {
  const ChatDetailsScreen({super.key});

  @override
  _ChatDetailsScreenState createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<Map<String, String>> _messages = [
    {
      'sender': 'other',
      'text': 'Please Select your Favorite Color from the list',
      'time': '1:58 PM',
      'date': '10-2-2025',
    },
    {
      'sender': 'user',
      'text': 'Sure, I will do that.',
      'time': '2:00 PM',
      'date': '10-2-2025',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _getSelectedChatUser(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(1.0),
                child: Container(
                  color: Color(0xFF5E1B67),
                  height: 1.0,
                ),
              ),
            ),
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(1.0),
                child: Container(
                  color: Color(0xFF5E1B67),
                  height: 2.0,
                ),
              ),
            ),
            body: Center(
              child: Text('Error loading chat details'),
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => ChatScreen()),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFF5E1B67),
                      size: 18,
                    ),
                  ),
                  SizedBox(width: 8),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/drawable/avatar1.png'),
                  ),
                  SizedBox(width: 8),
                  Text(
                    snapshot.data ?? 'User',
                    style: TextStyle(color: Color(0xFF5E1B67)),
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 10),
                      Text('10-2-2025',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              fontFamily: 'bf')),
                      Text('10:30 AM',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              fontFamily: 'bf')),
                    ],
                  ),
                ],
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(1.0),
                child: Container(
                  color: Color(0xFF5E1B67),
                  height: 2.0,
                ),
              ),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: _messages.length,
                    itemBuilder: (context, index) {
                      final message = _messages[index];
                      final isUserMessage = message['sender'] == 'user';
                      return Align(
                        alignment: isUserMessage
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(
                            left: isUserMessage ? 80 : 10,
                            right: isUserMessage ? 10 : 80,
                            top: 5,
                            // bottom: 5,
                          ),
                          decoration: BoxDecoration(
                            color: isUserMessage
                                ? Color(0xFF5E1B67)
                                : Colors.grey[300],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: isUserMessage
                                  ? Radius.circular(0)
                                  : Radius.circular(20),
                              bottomLeft: isUserMessage
                                  ? Radius.circular(20)
                                  : Radius.circular(0),
                              bottomRight: isUserMessage
                                  ? Radius.circular(20)
                                  : Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: isUserMessage
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                            children: [
                              if (isUserMessage)
                                Row(
                                  children: [
                                    SizedBox(width: 4),
                                    Expanded(
                                      child: Text(
                                        message['text']!,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontFamily: 'bf',
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              else
                                Text(
                                  message['text']!,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[800],
                                    fontFamily: 'bf',
                                  ),
                                ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                  Spacer(),
                                  Text(
                                    '${message['date']} ${message['time']}',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: isUserMessage
                                          ? Colors.white70
                                          : Colors.black54,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Color(0xFF5E1B67),
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 5,
                    bottom: 5,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _messageController,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'bf',
                              fontSize: 18),
                          decoration: InputDecoration(
                            hintText: 'Type your message here',
                            hintStyle: TextStyle(color: Colors.white),
                            fillColor: Colors.white,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 35,
                        ),
                        onPressed: () {
                          setState(() {
                            _messages.add({
                              'sender': 'user',
                              'text': _messageController.text,
                              'time':
                                  '2:00 PM', // You can replace this with the actual time
                              'date':
                                  '10-2-2025', // You can replace this with the actual date
                            });
                            _messageController.clear();
                          });
                          FocusScope.of(context).requestFocus(FocusNode());
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }

  Future<String> _getSelectedChatUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('selectedChatUser') ?? 'Unknown User';
  }
}
