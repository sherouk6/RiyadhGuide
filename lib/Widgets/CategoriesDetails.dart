import 'package:flutter/material.dart';
import 'package:RG/Screens/CategoriesScreen.dart';

class CategorieasDetails extends StatelessWidget {
  final String Name;
  final String PlaceUrl;
  final double rate;
  final String location;

  CategorieasDetails(this.Name, this.PlaceUrl, this.rate, this.location);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoriesScreen.screenRoute,
      arguments: {
        'Name': Name,
        'PlaceUrl': PlaceUrl,
        'rate': rate,
        'location': location,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                child: Image.network(
                  PlaceUrl,
                  height: 100,
                  width: 200,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Text(
                      '$Name',
                      style: TextStyle(
                        fontFamily: 'EBGaramond',
                        fontSize: 17.0,
                        color: Color.fromARGB(255, 2, 3, 69),
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text('Rate: $rate',
                        style: TextStyle(
                          fontFamily: 'EBGaramond',
                          fontSize: 17.0,
                          color: Color.fromARGB(255, 2, 3, 69),
                          fontWeight: FontWeight.normal,
                        )),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Location: $location',
                      style: TextStyle(
                        fontFamily: 'EBGaramond',
                        fontSize: 14.0,
                        color: Color.fromARGB(255, 2, 3, 69),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
