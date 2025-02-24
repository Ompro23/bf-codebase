import 'package:bf/faq_screen.dart';
import 'package:bf/home_screen.dart';
import 'package:bf/terms_screen.dart';
import 'package:bf/walkthrough_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            Text('Settings',
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 5),
        child: Column(
          children: [
            // First Container
            Container(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 15, bottom: 15),
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.grey),
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/drawable/circle_f.png',
                          width: 100, height: 100),
                      const SizedBox(width: 16),
                      SizedBox(
                        width: 50,
                        // height: 100,
                      ),
                      Image.asset('assets/drawable/textmark.png',
                          width: 100, height: 100),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'BeFriends is India\'s New Age; Community Powered Al Backed Emotional Wellness Platform.',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 123, 115, 124)),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'We believe that talking and sharing your thoughts can do wonders to ones mood.Hence we aim to give everyone a friend to talk to.',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 123, 115, 124)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // Second Container
            Container(
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "General",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF5E1B67),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WalkthroughScreen()),
                      );
                    },
                    child: _buildIconRow(
                        'assets/drawable/i_pu.png', 'Walkthrough'),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => FAQScreen()),
                      );
                    },
                    child: _buildIconRow('assets/drawable/i_faq.png', 'FAQs'),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              // bottomLeft: Radius.circular(8),
                              // bottomRight: Radius.circular(8),
                              ),
                        ),
                        builder: (BuildContext context) {
                          return Container(
                            color: Colors.white,
                            height: MediaQuery.of(context).size.height * 0.7,
                            padding: EdgeInsets.only(
                              // bottom: MediaQuery.of(context).viewInsets.bottom,
                              left: 13,
                              right: 13,
                              // top: 5,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'FEEDBACK',
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
                                        'SEND',
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
                                    hintText: 'Your Feedback Here...',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child:
                        _buildIconRow('assets/drawable/i_fb.png', 'Feedback'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // Third Container
            Container(
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "About",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF5E1B67),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => TermsScreen()),
                      );
                    },
                    child: _buildIconRow(
                        'assets/drawable/i_pu.png', 'Terms of Use'),
                  ),
                  InkWell(
                    onTap: () {},
                    child: _buildIconRow(
                        'assets/drawable/i_faq.png', 'Privacy Policy'),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(),
                        ),
                        builder: (BuildContext context) {
                          return Container(
                            color: Colors.white,
                            height: MediaQuery.of(context).size.height * 0.25,
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 12,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'GET IN TOUCH',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
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
                                SizedBox(height: 30),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        final whatsappUrl =
                                            "whatsapp://send?phone=916356955272";
                                        try {
                                          final url = Uri.parse(whatsappUrl);
                                          final launched = await launchUrl(
                                            url,
                                            mode:
                                                LaunchMode.externalApplication,
                                          );
                                          if (!launched && context.mounted) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                    'Could not open WhatsApp'),
                                              ),
                                            );
                                          }
                                        } catch (e) {
                                          if (context.mounted) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                    'WhatsApp is not installed'),
                                              ),
                                            );
                                          }
                                        }
                                      },
                                      child: Column(
                                        children: [
                                          Image.asset(
                                              'assets/drawable/whatsapp.png',
                                              width: 30,
                                              height: 30),
                                          SizedBox(height: 5),
                                          Text('WhatsApp',
                                              style: TextStyle(fontSize: 12)),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // Add Instagram link
                                      },
                                      child: Column(
                                        children: [
                                          Image.asset(
                                              'assets/drawable/instagram.png',
                                              width: 30,
                                              height: 30),
                                          SizedBox(height: 5),
                                          Text('Instagram',
                                              style: TextStyle(fontSize: 12)),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        final Uri emailLaunchUri = Uri.parse(
                                            'mailto:befriendsapp@gmail.com');
                                        try {
                                          await launchUrl(
                                            emailLaunchUri,
                                            mode:
                                                LaunchMode.externalApplication,
                                          );
                                        } catch (e) {
                                          if (context.mounted) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                    'Could not open email app'),
                                              ),
                                            );
                                          }
                                        }
                                      },
                                      child: Column(
                                        children: [
                                          Image.asset(
                                              'assets/drawable/email.png',
                                              width: 30,
                                              height: 30),
                                          SizedBox(height: 5),
                                          Text('Write to us',
                                              style: TextStyle(fontSize: 12)),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // Add Facebook link
                                      },
                                      child: Column(
                                        children: [
                                          Image.asset(
                                              'assets/drawable/website.png',
                                              width: 30,
                                              height: 30),
                                          SizedBox(height: 5),
                                          Text('Visit Us',
                                              style: TextStyle(fontSize: 12)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child:
                        _buildIconRow('assets/drawable/i_fb.png', 'Contact Us'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            Container(
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Account",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF5E1B67),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: _buildIconRow(
                        'assets/drawable/i_dmd.png', 'Delete My Data'),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () async {
                      try {
                        final whatsappUrl =
                            "whatsapp://send?phone=+919898989898";
                        final url = Uri.parse(whatsappUrl);
                        final launched = await launchUrl(
                          url,
                          mode: LaunchMode.externalApplication,
                        );
                        if (!launched && context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Could not open WhatsApp'),
                            ),
                          );
                        }
                      } catch (e) {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('WhatsApp is not installed'),
                            ),
                          );
                        }
                      }
                    },
                    child: Column(
                      children: [
                        Text('A product of',
                            style: const TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 66, 60, 66),
                                fontFamily: 'bf')),
                        Text('HAZHTeq Innovations Pvt Ltd',
                            style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xFF5E1B67),
                                fontFamily: 'bf',
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconRow(String iconPath, String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 4, right: 4),
      child: Row(
        children: [
          Image.asset(iconPath, width: 30, height: 30),
          const SizedBox(width: 14),
          Text(text,
              style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 66, 60, 66),
                  fontFamily: 'bf')),
        ],
      ),
    );
  }
}
