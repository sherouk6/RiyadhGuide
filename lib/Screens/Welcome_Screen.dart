import 'package:flutter/material.dart';
import 'package:RG/Screens/AppOverview.dart';
import 'package:flutter/material.dart';
import 'package:RG/Widgets/Mybutton1.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = 'WelcomeScreen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 3, 69),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('Pic/LR.png'),
                ),
                Text(
                  'Welcome To Riyadh',
                  style: TextStyle(
                    fontFamily: 'EBGaramond',
                    fontSize: 40.0,
                    color: Color.fromARGB(255, 250, 245, 238),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Mybutton1(
              color: Color.fromARGB(255, 3, 5, 99),
              title: "let's See what we have! ",
              onPressed: () {
                Navigator.pushNamed(context, AppOverview.screenRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
