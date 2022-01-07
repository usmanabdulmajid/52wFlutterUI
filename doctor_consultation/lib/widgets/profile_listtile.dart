import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  final String imagePath;
  const ProfileListTile({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 40,
          child: Image.asset(imagePath),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dr. Stella Kane',
              style: TextStyle(
                  color: Color(0XFF1E1C61), fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              'Heart surgeon - Flower Hospital',
              style:
                  TextStyle(color: const Color(0XFF1E1C61).withOpacity(0.65)),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(4.0),
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: const Color(0XFFEDF1FA),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Icon(Icons.call,
                      size: 16.0, color: Color(0XFF4B7FFB)),
                ),
                Container(
                  padding: const EdgeInsets.all(4.0),
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: const Color(0XFFFAF2EA),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Icon(
                    Icons.sms,
                    size: 16.0,
                    color: Color(0XFFFFB167),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: const Color(0XFFF9EDEB),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Icon(
                    Icons.video_camera_back,
                    size: 16,
                    color: Color(0XFFF57E71),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
