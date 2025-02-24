import 'package:flutter/material.dart';

class YourChroniclesScreen extends StatelessWidget {
  const YourChroniclesScreen({super.key});

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
            // Text box with the message
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                'A busy but productive day. It felt good to see progress, even with all the decisions. Staying focused on the bigger picture. Here\'s to tomorrow!',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 16),
            // Icons below the message
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.purple,
                  child: Icon(Icons.circle, color: Colors.white),
                ),
                SizedBox(width: 16),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.purple,
                  child: Icon(Icons.circle, color: Colors.white),
                ),
                SizedBox(width: 16),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.purple,
                  child: Icon(Icons.circle, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 16),
            // Bottom description
            Spacer(),
            Center(
              child: Text(
                'Your Chronicles...',
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
                'Build up your story by making regular entry in your dairy and lighten your mood with short clips and products from our store.',
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
                    backgroundColor: index == 1 ? Colors.purple : Colors.grey,
                  ),
                );
              }),
            ),
            SizedBox(height: 16),
            // Navigation button to go to the next page or action
            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                icon: Icon(Icons.arrow_forward, color: Colors.purple),
                onPressed: () {
                  // You can navigate to another page or perform an action here
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}