import 'package:flutter/material.dart';

class DoctorListTile extends StatelessWidget {
  final Color backgroundColor;
  final String name;
  final String hospital;
  final String imagePath;
  const DoctorListTile({
    Key? key,
    required this.backgroundColor,
    required this.name,
    required this.hospital,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          child: Image.asset(imagePath),
        ),
        title: Text(
          name,
          style: const TextStyle(
              color: Color(0XFF1E1C61), fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          hospital,
          style: TextStyle(color: const Color(0XFF1E1C61).withOpacity(0.65)),
        ),
      ),
    );
  }
}
