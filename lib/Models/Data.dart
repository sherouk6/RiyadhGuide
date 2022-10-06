import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoriesData {
  static const String screenRoute = 'CategoriesData';

  final String Name;
  final String PlaceUrl;
  final double rate;
  final String location;

  const CategoriesData(
      {required this.Name,
      required this.PlaceUrl,
      required this.rate,
      required this.location});
}
