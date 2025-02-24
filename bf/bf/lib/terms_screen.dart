import 'package:bf/detailes_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Terms & Conditions',
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
                          '\nBy using the "BeFriends" app, you concur with the following terms and conditions - you should make sure therefore that you read them carefully before using the app. You\'re not allowed to copy, or modify the app, any part of the app, or our trademarks in any way. You\'re not allowed to attempt to extract the source code of the app, and you also shouldn\'t try to translate the app into other languages, or make derivative versions. The app itself, and all the trademarks, copyright, database rights and other intellectual property rights related to it, still belong to ',
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
                      text: 'HAZHTeq Innovations Pvt Ltd.\n\n',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontFamily: 'bf',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          'HAZHTeq Innovations is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you\'re paying for.\n\n',
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
                          'The BeFriends app stores and processes personal data that you have chosen to provide to us, in order to provide you our Service(s). It\'s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone\'s security features and it could mean that the BeFriends app won\'t work properly or at all.\n\n',
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
                          'The app does use third party services that declare their own Terms and Conditions.\n\n',
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
                          'Link to Terms and Conditions of third party service providers used by the app can be found in the "Privacy Policy".\n\n',
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
                          'You should be aware that there are certain things that HAZHTeq Innovations will not take responsibility for. Certain functions of the app will require the app to have an active internet connection. The connection can be Wi-Fi, or provided by your mobile network provider, but HAZHTeq Innovations cannot take responsibility for the app not working at full functionality if you don\'t have access to Wi-Fi, and you don\'t have any of your data allowance left.\n\n',
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
                          'Along the same lines, HAZHTeq Innovations cannot always take responsibility for the way you use the app i.e. You need to make sure that your device stays charged — if it runs out of battery and you can\'t turn it on to avail the Service, HAZHTeq Innovations cannot accept responsibility.\n\n',
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
                          'With respect to HAZHTeq Innovations\' responsibility for your use of the app, when you\'re using the app, it\'s important to bear in mind that although we endeavour to ensure that it is updated and correct at all times, we do rely on third parties to provide information to us so that we can make it available to you. HAZHTeq Innovations accepts no liability for any loss, direct or indirect, you experience as a result of relying wholly on this functionality of the app.\n\n',
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
                          'At some point, we may wish to update the app. The app is currently available on Android — the requirements for system (and for any additional systems we decide to extend the availability of the app to) may change, and you\'ll need to download the updates if you want to keep using the app. HAZHTeq Innovations does not promise that it will always update the app so that it is relevant to you and/or works with the Android version that you have installed on your device. However, you promise to always accept updates to the application when offered to you. We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must stop using the app, and (if needed) delete it from your device.\n\n',
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
                          'At some point, we may wish to update the app. The app is currently available on Android — the requirements for system (and for any additional systems we decide to extend the availability of the app to) may change, and you\'ll need to download the updates if you want to keep using the app. HAZHTeq Innovations does not promise that it will always update the app so that it is relevant to you and/or works with the Android version that you have installed on your device. However, you promise to always accept updates to the application when offered to you. We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must stop using the app, and (if needed) delete it from your device.\n\n',
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
                          'BeFriends is developed to support you in your stressing life and help you throughout but, HAZHTeq Innovations does not take any responsibility or cannot be questioned for any kind of mishap, mentally or physically that may or may not occur to any person irrespective of age, gender, and location after using BeFriends app.\n'
                          'HAZHTeq Innovations takes a great deal of care in selecting the Listeners provided here, but, in any case of misbehavior, Users can directly report them to the team at HAZHTeq Innovations through any mode of communication so that issue can be dealt with as soon as possible.\n'
                          'Similarly any User, Talker and Listener alike, will be banned from the server if the report submitted by any of the user is found valid, and is supported by evidence.\n'
                          'HAZHTeq Innovations is not accountable for the information you choose to disclose through the application with any other user. HAZHTeq Innovations does not take any responsibility of what happens during and after the counselling sessions booked through the application.\n'
                          'HAZHTeq Innovations have tied up with different providers for products available on the e-commerce store, and cannot be held accountable for the dosage, method of use, and side effects, if any, caused by the use of the products.\n'
                          'HAZHTeq Innovations do not claim any right and/or ownership of the content provided on the application, but in any case of copyright, HAZHTeq Innovations is open to discussion and also in agreement to remove the specific content.\n'
                          'HAZHTeq Innovations do not take guarantee for the accuracy of the report as it is generated via a third party system.\n'
                          'HAZHTeq Innovations owns the rights of Life Stories that are provided on the application.\n'
                          'HAZHTeq Innovations are in the process of training the chatbot available on the application, and reserves the right and ownership of the graphics and the model.\n'
                          'HAZHTeq Innovations may or may not increase the prices of the subscriptions and/or bookings and as the payment is processed by a third party provider, in any case of loss of transaction and/or loss of money, HAZHTeq Innovations cannot be held accountable.\n\n'
                          'HAZHTeq Innovations cannot be held accountable or liable in case of such adversity.\n\n'
                          'Changes to This Terms and Conditions\n\n',
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
                          'We may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Terms and Conditions on this page.\n\nThese terms and conditions are effective as of\n01st of April 2022.\n',
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
                              'If you have any questions or suggestions about our Terms and Conditions, do not hesitate to contact us at\n',
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
