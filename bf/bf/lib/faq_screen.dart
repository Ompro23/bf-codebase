import 'package:bf/detailes_screen.dart';
import 'package:flutter/material.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> with TickerProviderStateMixin {
  int _selectedQuestionIndex = -1;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  void _toggleQuestion(int index) {
    setState(() {
      if (_selectedQuestionIndex == index) {
        _controller.reverse();
        _selectedQuestionIndex = -1;
      } else {
        _selectedQuestionIndex = index;
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> faqData = [
      {
        'question': 'Q. How do you ensure our anonymity?',
        'answer':
            'Your anonymity is ensured since as a user you are only an ID to us.The ID you can see below your username at the home screen is all we know you by.'
      },
      {
        'question': 'Q. Will my chats be shared with anyone??',
        'answer':
            'No, all the chats happening on the platform are and will always remain end-to-end encrypted.'
      },
      {
        'question': 'Q. How do I delete my data?',
        'answer':
            'Deleting data is simple, go to Settings, at the top right corner at the home screen, scroll down and click Delete My Data.\n\nNote: Deleting Data will delete all chats and diary entries.'
      },
      {
        'question':
            'Q. Do I need to be diagnosed with Mental\n     illness to be a user of this app?',
        'answer':
            'Absolutely nott this application is for everyone, we are your friends. Friends dont need to any kind of reason to be with one another.'
      },
      {
        'question': 'Q. How accurate is the assesment report?',
        'answer':
            'The assessment available on our platform are based on pseudo-science, although it is helpful, it only about 75% accuracy.'
      },
      {
        'question': 'Q. Can I use the products if I have aliergies?',
        'answer':
            'The products available on our application are purely Ayurvedic based.\nIt is advised to read the instructions beforehand.'
      },
      {
        'question':
            'Q. What is the concept of A-Meets?  \n     Whenever I open it,it points to a date and  \n     time.',
        'answer':
            'Anonymous Meets is a reoccurring event on the platform where you can chat with like minded people.\nThe date and time you see are the events opening time.\nDo join them.'
      },
      {
        'question': 'Q. What is a Virtual Friend?',
        'answer':
            'Virtual Friend is your own personal friend. Where you can name them as well as decide how they look.\nTurn the imaginary friend from our childhoods into a reality.'
      },
      {
        'question': 'Q. I get a lot of notification, how can i opt out?',
        'answer':
            'Kozy - "Sorry bubble, no can\'t do"\nApologies, you can not switch off the constant notifications, there are set to check in on you, we love you and would like to know about your day.'
      },
      {
        'question': 'Q. How can I get Professional help?',
        'answer':
            'Scroll down at the Home Screen, click on the statement below A-Meets and you should find yourself with a list of experts.'
      },
      {
        'question':
            'Q. I write personal stuff in my diary, will my \ndata be shared with anyone?',
        'answer':
            'No. All the entries that you make in the Diary are always saved on your device and we have no way of accessing.\n\nNote: All the entries will be wiped away of you Uninstall the application or Delete Data.'
      },
      {
        'question': 'Q. What is Kozy?',
        'answer':
            'Kozy - Your Friend. Am I not?\nKozy is your Emotional Well Being Support System.'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()),
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
                'assets/drawable/ic_faq.png',
                width: 45,
                height: 45,
              ),
              onPressed: () {},
            ),
            Text('FAQ',
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: List.generate(faqData.length, (index) {
            return Column(
              children: [
                InkWell(
                  onTap: () => _toggleQuestion(index),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 2.0, vertical: 4),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xFF5E1B67),
                          width: 1.5,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          faqData[index]['question']!,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'bf',
                              fontWeight: FontWeight.w600),
                        ),
                        AnimatedRotation(
                          turns: _selectedQuestionIndex == index ? 0.5 : 0,
                          duration: const Duration(milliseconds: 300),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AnimatedSize(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  child: _selectedQuestionIndex == index
                      ? Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            faqData[index]['answer']!,
                            style: TextStyle(
                              color: Color(0xFF5E1B67),
                              fontSize: 13,
                              fontFamily: 'bf',
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                ),
                SizedBox(height: 10),
              ],
            );
          }),
        ),
      ),
    );
  }
}
