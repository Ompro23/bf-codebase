import 'package:bf/detailes_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 21,
                fontFamily: 'bf',
                fontWeight: FontWeight.w600,
                color: Color(0xFF5E1B67),
              ),
            ),
            Spacer(), // Add this to push everything to the right
            IconButton(
              icon: Image.asset(
                'assets/drawable/textmark.png',
                width: 50,
                height: 50,
                color: Color(0xFF5E1B67),
              ),
              onPressed: () {},
            ),
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
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          '\nBeFriends app developed by HAZHTeq Innovations Pvt Ltd is an Ad Supported app. This App is provided by BeFriends at no cost except for the subscriptions of the services and booking of counselling sessions, and is intended for use as is.\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text:
                          'This page is used to inform users regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our App/Service.\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text:
                          'If you choose to use our App, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the App/Service. We will not use or share your information with anyone except as described in this Privacy Policy.\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text:
                          'The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at BeFriends unless otherwise defined in this Privacy Policy.\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text: 'Information Collection and Use\n\n',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          'For a better experience, while using our App/Service, we may require you to provide us with certain personally identifiable information, including but not limited to:\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(left: 30.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•  ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Expanded(
                                      child: Text(
                                        'Contact Number',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'bf',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•  ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Expanded(
                                      child: Text(
                                        'Email Address',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'bf',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•  ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Expanded(
                                      child: Text(
                                        'Google Profile',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'bf',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•  ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Expanded(
                                      child: Text(
                                        'Advertising ID',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'bf',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•  ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Expanded(
                                      child: Text(
                                        'Network State',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'bf',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•  ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Expanded(
                                      child: Text(
                                        'Storage Access',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'bf',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•  ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Expanded(
                                      child: Text(
                                        'Camera',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'bf',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextSpan(
                          text: '\n\n',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'bf',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    TextSpan(
                      text:
                          'The information that we request will be retained by us and used as described in this privacy policy.\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text:
                          'The app does use third party services that may collect information used to identify you.\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text:
                          'Link to privacy policy Of third party service providers used by the app\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•  ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Expanded(
                                  child: Text(
                                    'Google Play Services',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.deepPurple,
                                        fontFamily: 'bf',
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•  ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Expanded(
                                  child: Text(
                                    'AdMob',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.deepPurple,
                                      fontFamily: 'bf',
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•  ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Expanded(
                                  child: Text(
                                    'Google Analytics for Firebase',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.deepPurple,
                                      fontFamily: 'bf',
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•  ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Expanded(
                                  child: Text(
                                    'Appodeal',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.deepPurple,
                                      fontFamily: 'bf',
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•  ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Expanded(
                                  child: Text(
                                    'Unity',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.deepPurple,
                                      fontFamily: 'bf',
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•  ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Expanded(
                                  child: Text(
                                    'Vungle',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.deepPurple,
                                      fontFamily: 'bf',
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•  ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Expanded(
                                  child: Text(
                                    'AdColony',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.deepPurple,
                                      fontFamily: 'bf',
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•  ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Expanded(
                                  child: Text(
                                    'Facebook Audience Network',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.deepPurple,
                                      fontFamily: 'bf',
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•  ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Expanded(
                                  child: Text(
                                    'Epom',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.deepPurple,
                                      fontFamily: 'bf',
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•  ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Expanded(
                                  child: Text(
                                    'ironSource',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.deepPurple,
                                      fontFamily: 'bf',
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•  ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Expanded(
                                  child: Text(
                                    'InMobi',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.deepPurple,
                                      fontFamily: 'bf',
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•  ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Expanded(
                                  child: Text(
                                    'ChartBoost',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.deepPurple,
                                      fontFamily: 'bf',
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('•  ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Expanded(
                                  child: Text(
                                    'AppLovin\n',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.deepPurple,
                                      fontFamily: 'bf',
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextSpan(
                      text: 'Log Data\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.bold,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text:
                          "We want to inform you that whenever you use our App/Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol ('IP') address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the App/Service, and other statistics.\n\n",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text: 'Cookies\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.bold,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text:
                          "Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.\n\n",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text:
                          "This Service does not use these 'cookies' explicitly. However, the app may use third party code and libraries that use 'cookies' to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.\n\n",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text: 'Services Providers\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.bold,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text:
                          "We may employ third-party companies and individuals due to the following reasons:\n\n",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(left: 30.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•  ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Expanded(
                                      child: Text(
                                        'To Facilitate our Services;',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'bf',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // SizedBox(height: 5),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•  ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Expanded(
                                      child: Text(
                                        'To provide the Service on our behalf;',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'bf',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // SizedBox(height: 5),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•  ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Expanded(
                                      child: Text(
                                        'To perform Service-related services: or',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'bf',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // SizedBox(height: 5),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('•  ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Expanded(
                                      child: Text(
                                        'To assist us in analyzing how our Service is used.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'bf',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        TextSpan(
                          text: '\n\n',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'bf',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    TextSpan(
                      text:
                          "We want to inform users of this App/Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.\n\n",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text: 'Security\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.bold,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text:
                          'We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text: 'Links to Other Sites\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.bold,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text:
                          'This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site, Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text: 'Children\'s Privacy\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.bold,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text:
                          'These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13 years of age. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text: 'Changes to This Privacy Policy\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.bold,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text:
                          'We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page.\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text:
                          'This policy is effective as Of 01ˢᵗ Of September 2021\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                    TextSpan(
                      text:
                          'This "Privacy Policy" can be updated and changed by the company without any prior notice.\n\n',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.w500,
                        letterSpacing:
                            1.0, // Add this to increase spacing between characters
                      ),
                    ),
                  ],
                ),
              ),
              // Text(
              //   'HAZHTeq Innovations is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you\'re paying for.',
              //   style: TextStyle(
              //       fontSize: 14,
              //       color: Colors.black,
              //       fontFamily: 'bf',
              //       fontWeight: FontWeight.w500),
              // ),
              Container(
                width: double.infinity,
                height: 2,
                color: Color(0xFF3A005B),
              ),

              Container(
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '\nContact Us\n\n',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'bf',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text:
                              'If you have any questions or suggestions about our Privacy Policy, Do not hesitate to contact us at\n',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'bf',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: 'befriendsapp@gmail.com',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF3A005B),
                            fontFamily: 'bf',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // launch(emailLaunchUri.toString());s
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => DetailsScreen()));
        },
        child: Image.asset(
          'assets/drawable/ic_agree.png', // Replace with your image path
          width: 45,
          height: 45,
        ),
        backgroundColor: Color(0xFF3A005B),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
