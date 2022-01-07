import 'package:flutter/cupertino.dart';

class Appointment {
  final String name;
  final String specialty;
  final String hospital;
  final String about;
  final List<String> appoinments;
  final String imageUrl;
  final Color backgroundColor;
  final Color color;
  final Color mainColor;
  Appointment({
    required this.name,
    required this.specialty,
    required this.hospital,
    required this.about,
    required this.appoinments,
    required this.imageUrl,
    required this.backgroundColor,
    required this.color,
    required this.mainColor,
  });
}
