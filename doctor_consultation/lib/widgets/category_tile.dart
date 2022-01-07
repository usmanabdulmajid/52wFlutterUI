import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String name;
  final String iconUrl;
  final Color color;
  const CategoryTile({
    Key? key,
    required this.name,
    required this.iconUrl,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, top: 15),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          PhysicalModel(
            color: Colors.transparent,
            elevation: 4.0,
            shadowColor: Colors.black,
            borderRadius: BorderRadius.circular(14.0),
            child: Container(
              width: 100,
              height: 130,
              padding: const EdgeInsets.only(left: 15, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              alignment: Alignment.bottomLeft,
              child: Text(
                name,
                style: const TextStyle(color: Color(0XFF292685)),
              ),
            ),
          ),
          Positioned(
            top: -10,
            right: -10,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(12.0),
              ),
              alignment: Alignment.center,
              child: ImageIcon(
                AssetImage(iconUrl),
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
