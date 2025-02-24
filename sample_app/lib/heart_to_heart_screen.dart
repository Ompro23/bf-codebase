import 'package:flutter/material.dart';
import 'your_chronicles_screen.dart';
import 'chat_bubble.dart';

class HeartToHeartScreen extends StatelessWidget {
  const HeartToHeartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.skip_next, color: Colors.purple),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.check, color: Colors.purple),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Chat bubbles with avatars
            Column(
              children: [
                ChatBubble(
                  avatar: 'assets/person1.png', // Replace with actual asset
                  message: 'Somebody there?',
                ),
                ChatBubble(
                  avatar: 'assets/koala.png', // Replace with actual asset
                  message: 'Kozy is not nosy.',
                ),
                ChatBubble(
                  avatar: 'assets/person2.png', // Replace with actual asset
                  message: 'Hey, What’s up?',
                ),
                ChatBubble(
                  avatar: 'assets/person3.png', // Replace with actual asset
                  message: 'Hello friend, How are you?',
                ),
              ],
            ),
            // Bottom description
            Spacer(),
            Center(
              child: Text(
                'Heart-To-Heart',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text(
                'Chat with our Listeners as well as the\nEmotionally available Virtual Friend that you can create.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            // Bottom navigation indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: index == 0 ? Colors.purple : Colors.grey,
                  ),
                );
              }),
            ),
            SizedBox(height: 16),
            // Navigation button to go to the second page
            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                icon: Icon(Icons.arrow_forward, color: Colors.purple),
                onPressed: () {
                  // Navigate to the second page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => YourChroniclesScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}