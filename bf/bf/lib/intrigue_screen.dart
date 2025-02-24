import 'package:bf/home_screen.dart';
import 'package:flutter/material.dart';

class IntrigueScreen extends StatelessWidget {
  const IntrigueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
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
                'assets/drawable/ic_story.png',
                width: 45,
                height: 45,
              ),
              onPressed: () {},
            ),
            Text('Pre Wedding Jitters',
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
        padding:
            EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '''Marriage- Off. I still remember that feeling of apprehension and nervousness experienced during the months leading up to the D-day (chuckles). From organizing the marriage function venue to selecting the spoils (which btw is quite fun) - I distinctly remember breaking into cold sweat on multiple occasions. But it is natural to experience such pre-wedding titters- and that itself is a unique feeling - you want to take that great leap forward, but simultaneously you want the status quo to remain. It is a mixed bag of emotions. I remember the genesis of the entire process- generating an account on a popular matrimonial website, interacting and screening prospective candidates (laughs), gauging their response and finally taking a call. Eventually, these efforts bore fruit, finally finding myself the "perfect" match- a potpourri of mixed emotions and personalities- simple yet dynamic, grounded yet willing to test new waters. The list is endless. We eventually got engaged- and our relationship became a strong bond of friendship. love, understanding and passion. We would spend countless nights talking about our fantasies, hopes, aspirations and apprehensions. It was the happiest time of our lives, feeling like we had left Earth and entered paradise. However, the impasse was not far away, A few months into the alliance and we began feeling the pressure, plunging through us like an icy knife. The ground reality eventually took a firmer grip- with significantly scary thoughts coursing through my mind- what would happen to our bond in the years to come? Would we be financially secure and be able to provide for our familial needs? What would happen in case of any medical emergency? And the worst of it all, if God forbid I became unemployed, how would I provide for my family? It was like a wedge stuck in my throat. It is, however, said that every cloud has a silver lining. After passing through that grueling month of self-doubt and uncertainty. it suddenly became crystal clear, No sooner had I entered the wedding premises, my fears were instantly dispelled. I realized this is exactly what I wanted-seeing my beautiful and lovely wife in front of me- all decked up and ready t embark on this beautiful lifetime enterprise. When I look back, I realize that these titters only made me more resolute, responsible and mature. Therefore, a word of advice to every young man and woman out there, do not shy away from this feeling. It will only add to your resume of life experiences. Do what your gut tells you to, but also work towards making things work. Have proper and clear communication between each other.''',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFAQItem(String question, String answer) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF5E1B67),
              ),
            ),
            SizedBox(height: 8),
            Text(
              answer,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement your details screen here
    return Scaffold();
  }
}
