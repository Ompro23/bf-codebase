import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'product_screen.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

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
                'assets/drawable/store.png',
                width: 35,
                height: 35,
                // color: Color(0xFF5E1B67),
              ),
              onPressed: () {},
            ),
            Text('Store',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'bf',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF5E1B67))),
          ],
        ),
      ),
      body: Column(
        children: [
          // First Row with Image and Text (Sticky)
          Stack(
            children: [
              InkWell(
                onTap: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  await prefs.setString(
                      'selectedProduct', 'Aromatrix Mood Boosters (Pack of 6)');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductScreen()),
                  );
                },
                child: Container(
                  // padding: EdgeInsets.all(16),
                  margin: EdgeInsets.all(8),
                  width: double.infinity,
                  height: 200,
                  child: Image.asset(
                    'assets/drawable/boxed.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  margin: EdgeInsets.all(8),
                  color: Color(0xFF5E1B67).withOpacity(0.9),
                  child: Text(
                    'Aromatrix Mood Boosters (Pack of 6)',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Scrollable content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Second Row with Two Columns
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: _buildItemTile(context, 'A. Cinnamon',
                                  'assets/drawable/rp.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, top: 8),
                              child: _buildItemTile(context, 'Gardenia',
                                  'assets/drawable/rp.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, top: 8, bottom: 8),
                              child: _buildItemTile(
                                  context, 'Rose P.', 'assets/drawable/rp.png'),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8, left: 8),
                              child: _buildItemTile(
                                  context, 'Aqua', 'assets/drawable/rp.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 8),
                              child: _buildItemTile(context, 'Lavender',
                                  'assets/drawable/rp.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: _buildItemTile(context, 'Sandalwood',
                                  'assets/drawable/rp.png'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemTile(BuildContext context, String title, String imagex) {
    return Container(
      height: 200,
      // padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('selectedProduct', title);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => ProductScreen()),
          );
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              imagex,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                color: Color(0xFF5E1B67).withOpacity(0.9),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
