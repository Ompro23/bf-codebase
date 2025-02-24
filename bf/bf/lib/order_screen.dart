import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'product_screen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final _formKey = GlobalKey<FormState>();
  final List<TextEditingController> _controllers = List.generate(
    7,
    (index) => TextEditingController(),
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _getSelectedProduct(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        final productName = snapshot.data ?? 'Unknown Product';
        final productDetails =
            ProductScreen().productDetails[productName] ?? {};

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              children: [
                // Image.asset(
                //   'assets/drawable/info.png',
                //   width: 30,
                //   height: 30,
                // ),
                SizedBox(width: 8),
                Text(
                  'Place Order',
                  style: TextStyle(
                    color: Color(0xFF5E1B67),
                    fontSize: 18,
                    fontFamily: 'bfsb',
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.close, color: Color(0xFF5E1B67)),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage(productDetails['image'] ?? ''),
                        radius: 50,
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productName,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'bfsb',
                                color: Color(0xFF5E1B67),
                              ),
                            ),
                            Text(
                              productDetails['price'] ?? '',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'bf',
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Alternatively, you can place your order on Instagram or WhatsApp',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'bfsb',
                      color: Color(0xFF5E1B67),
                    ),
                  ),
                  Divider(thickness: 1, color: Color(0xFF5E1B67)),
                  SizedBox(height: 2),
                  Text(
                    'Shipping Information',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'bf',
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _controllers[0],
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFF5E1B67)),
                      ),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'Please enter your name' : null,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _controllers[1],
                    decoration: InputDecoration(
                      labelText: 'Contact Number',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFF5E1B67)),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                    validator: (value) => value!.length != 10
                        ? 'Enter valid 10-digit number'
                        : null,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _controllers[2],
                    decoration: InputDecoration(
                      labelText: 'Address',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFF5E1B67)),
                      ),
                    ),
                    maxLines: 3,
                    validator: (value) =>
                        value!.isEmpty ? 'Please enter your address' : null,
                  ),
                  SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'City',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFF5E1B67)),
                      ),
                    ),
                    items: [
                      'Mumbai',
                      'Delhi',
                      'Bangalore',
                      'Chennai',
                      'Kolkata'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _controllers[3].text = value!;
                      });
                    },
                    validator: (value) =>
                        value == null ? 'Please select a city' : null,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _controllers[4],
                    decoration: InputDecoration(
                      labelText: 'State',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFF5E1B67)),
                      ),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'Please enter your state' : null,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _controllers[5],
                    decoration: InputDecoration(
                      labelText: 'Pincode',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFF5E1B67)),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    validator: (value) => value!.length != 6
                        ? 'Enter valid 6-digit pincode'
                        : null,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _controllers[6],
                    decoration: InputDecoration(
                      labelText: 'Coupon Code (Optional)',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFF5E1B67)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            // decoration: BoxDecoration(borderRadius: BorderRadius.all(2)),
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    icon: Image.asset(
                      'assets/drawable/instord.png',
                      width: 34,
                      height: 34,
                      color: Colors.white,
                    ),
                    label: Text('ORDER ON\nINSTAGRAM',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'bf',
                        )),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF5E1B67),
                      padding: EdgeInsets.symmetric(vertical: 12),
                    ),
                    onPressed: () {
                      // Handle COD
                    },
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton.icon(
                    icon: Image.asset(
                      'assets/drawable/whatsord.png',
                      width: 34,
                      height: 34,
                      color: Colors.white,
                    ),
                    label: Text('ORDER ON\nWHATSAPP',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'bf',
                        )),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF5E1B67),
                      padding: EdgeInsets.symmetric(vertical: 12),
                    ),
                    onPressed: () {
                      // Handle online payment
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<String> _getSelectedProduct() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('selectedProduct') ?? 'Unknown Product';
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }
}
