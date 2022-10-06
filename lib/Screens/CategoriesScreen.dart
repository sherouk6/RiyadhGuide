import 'package:flutter/material.dart';
import 'package:RG/CategoriesData.dart';
import 'package:RG/Models/Data.dart';
import 'package:RG/Widgets/CategoriesDetails.dart';

class CategoriesScreen extends StatefulWidget {
  static const String screenRoute = 'Cinema';
  const CategoriesScreen({Key? key}) : super(key: key);
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 245, 238),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 3, 69),
        title: Text(
          'Home',
          style: TextStyle(
            fontFamily: 'EBGaramond',
            fontSize: 30.0,
            color: Color.fromARGB(255, 250, 245, 238),
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      body: GridView(
        padding: EdgeInsets.fromLTRB(15, 80, 15, 40),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 7 / 8,
          mainAxisSpacing: 40,
          crossAxisSpacing: 20,
        ),
        children: Categories_data.map(
          (CategoryData) => CategorieasDetails(CategoryData.Name,
              CategoryData.PlaceUrl, CategoryData.rate, CategoryData.location),
        ).toList(),
      ),
    );
  }
}
