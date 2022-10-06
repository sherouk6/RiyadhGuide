import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:RG/Screens/CategoriesScreen.dart';
import 'package:RG/Widgets/Mybutton1.dart';

class AppOverview extends StatefulWidget {
  static const String screenRoute = 'AppOverview';
  const AppOverview({Key? key}) : super(key: key);

  @override
  _AppOverviewState createState() => _AppOverviewState();
}

class _AppOverviewState extends State<AppOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 3, 69),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 3, 69),
        title: Text(
          'Back',
          style: TextStyle(
            fontFamily: 'EBGaramond',
            fontSize: 30.0,
            color: Color.fromARGB(255, 250, 245, 238),
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Text(
                  'Here you can find tourist guide for the best restaurants, cafes, malls, cinemas, and a lot of recreational facilities in Riyadh!',
                  textAlign: TextAlign.center,
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
              height: 100,
            ),
            Mybutton1(
              color: Color.fromARGB(255, 3, 5, 99),
              title: "let's Start! ",
              onPressed: () {
                Navigator.pushNamed(context, CategoriesScreen.screenRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
