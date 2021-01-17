import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Services {
  final String id;
  final int description;
  final String title;
  final String image;

  Services(
      {@required this.id,
      this.description,
      @required this.title,
      @required this.image});
}
