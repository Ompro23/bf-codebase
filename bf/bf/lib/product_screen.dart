import 'package:bf/order_screen.dart';
import 'package:bf/store_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductScreen extends StatelessWidget {
  final Map<String, Map<String, String>> productDetails = {
    'Aromatrix Mood Boosters (Pack of 6)': {
      'image': 'assets/drawable/boxed.jpg',
      'price': '\$29.99',
      'description':
          'Aromatrix Mood Boosters are designed to enhance your mood and well-being.',
      'benefits': 'Boosts mood, Reduces stress, Enhances relaxation',
      'burnTime': 'Up to 60 hours',
      'precaution':
          'Keep away from children and pets. Do not leave burning candles unattended.'
    },
    'A. Cinnamon': {
      'image': 'assets/drawable/rp.png',
      'price': '\₹ 149',
      'description':
          'Mood Booster - Apple Cinnamon Scented Candles are prepared with Soya Wax and Treated with Apple Cinnamon Essential Oils, bringing 300gms of mesmerizing scent to you.',
      'benefits': 'Helps in managing anxiety',
      'burnTime': '5 Hours',
      'precaution': 'keep away from children & direct sunlight'
    },
    'Gardenia': {
      'image': 'assets/drawable/rp.png',
      'price': '\₹ 149',
      'description':
          'Mood Booster - Gardenia Scented Candles are prepared with Soya Wax and Treated with Gardenia Essential Oils, bringing 300gms of mesmerizing scent to you.',
      'benefits': 'Promotes relaxation',
      'burnTime': '5 Hours',
      'precaution': 'keep away from children & direct sunlight'
    },
    'Rose P.': {
      'image': 'assets/drawable/rp.png',
      'price': '\₹ 149',
      'description':
          'Mood Booster - Rose Scented Candles are prepared with Soya Wax and Treated with Rose Essential Oils, bringing 300gms of mesmerizing scent to you.',
      'benefits': 'Enhances memory',
      'burnTime': '5 Hours',
      'precaution': 'keep away from children & direct sunlight'
    },
    'Aqua': {
      'image': 'assets/drawable/rp.png',
      'price': '\₹ 149',
      'description':
          'Mood Booster - Aqua Scented Candles are prepared with Soya Wax and Treated with Aqua Essential Oils, bringing 300gms of mesmerizing scent to you.',
      'benefits': 'Reduces stress',
      'burnTime': '5 Hours',
      'precaution': 'keep away from children & direct sunlight'
    },
    'Lavender': {
      'image': 'assets/drawable/rp.png',
      'price': '\₹ 149',
      'description':
          'Mood Booster - Lavender Scented Candles are prepared with Soya Wax and Treated with Lavender Essential Oils, bringing 300gms of mesmerizing scent to you.',
      'benefits': 'Induces Calmness',
      'burnTime': '5 Hours',
      'precaution': 'keep away from children & direct sunlight'
    },
    'Sandalwood': {
      'image': 'assets/drawable/rp.png',
      'price': '\₹ 149',
      'description':
          'Mood Booster - Sandalwood Scented Candles are prepared with Soya Wax and Treated with Sandalwood Essential Oils, bringing 300gms of mesmerizing scent to you.',
      'benefits': 'Decreases anxiety and nervousness',
      'burnTime': '5 Hours',
      'precaution': 'keep away from children & direct sunlight'
    },
    // Add other products here...
  };

  ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _getSelectedProduct(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFF5E1B67),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFF5E1B67),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: Center(
              child: Text('Error loading product'),
            ),
          );
        } else {
          final product = productDetails[snapshot.data ?? 'Unknown Product'];
          return Scaffold(
            appBar: AppBar(
              // backgroundColor: Color(0xFF5E1B67),
              leading: IconButton(
                icon: ImageIcon(
                  AssetImage('assets/drawable/back.png'),
                  color: Color(0xFF5E1B67),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => StoreScreen()));
                },
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF5E1B67),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(product?['image'] ??
                                  'assets/drawable/default.png'),
                              SizedBox(height: 8),
                              Text(
                                snapshot.data ?? 'Product',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'bf',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 0),
                              Text(
                                product?['price'] ?? '',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'bf',
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          product?['description'] ?? '',
                          style: TextStyle(fontFamily: 'bf'),
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Benefits',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'bf',
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                product?['benefits'] ?? '',
                                style: TextStyle(fontFamily: 'bf'),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Burn Time',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'bf',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                product?['burnTime'] ?? '',
                                style: TextStyle(fontFamily: 'bf'),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Precaution',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'bf',
                                  color: Colors.red,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(product?['precaution'] ?? '',
                                  style: TextStyle(fontFamily: 'bf')),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderScreen()),
                );
              },
              backgroundColor: Color(0xFF5E1B67),
              child: Icon(Icons.shopping_cart),
            ),
          );
        }
      },
    );
  }

  Future<String> _getSelectedProduct() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('selectedProduct') ?? 'Unknown Product';
  }
}
