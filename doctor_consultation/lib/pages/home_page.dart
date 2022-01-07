import 'package:doctor_consultation/data/categories.dart';
import 'package:doctor_consultation/data/doctors.dart';
import 'package:doctor_consultation/pages/profile_page.dart';
import 'package:doctor_consultation/widgets/category_tile.dart';
import 'package:doctor_consultation/widgets/doctor_listtile.dart';
import 'package:doctor_consultation/widgets/scale_page_route.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0XFFF9F9F9),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const SizedBox(height: 50.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ImageIcon(AssetImage('assets/images/menu .png')),
                        CircleAvatar(
                          backgroundColor: const Color(0XFF1E1C61),
                          child: Image.asset(
                            'assets/images/person.png',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Find Your Desired Doctor',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF1E1C61),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 40,
                      padding: const EdgeInsets.only(left: 24),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: const Color(0XFFF2F2F2)),
                      alignment: Alignment.center,
                      child: const TextField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'search for doctors',
                          hintStyle: TextStyle(color: Color(0XFFC0C0C0)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Categories',
                      style: TextStyle(
                          color: Color(0XFF292685),
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 160,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CategoryTile(
                            name: categoryList[0].name,
                            iconUrl: categoryList[0].iconUrl,
                            color: Colors.blue,
                          ),
                          CategoryTile(
                            name: categoryList[1].name,
                            iconUrl: categoryList[1].iconUrl,
                            color: const Color(0XFFFFB167),
                          ),
                          CategoryTile(
                              name: categoryList[2].name,
                              iconUrl: categoryList[2].iconUrl,
                              color: const Color(0XFFF57E71)),
                          CategoryTile(
                              name: categoryList[3].name,
                              iconUrl: categoryList[3].iconUrl,
                              color: const Color(0XFF1E1C61).withOpacity(0.8)),
                          CategoryTile(
                              name: categoryList[4].name,
                              iconUrl: categoryList[4].iconUrl,
                              color: Colors.purple),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Top Doctors',
                      style: TextStyle(
                          color: Color(0XFF292685),
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            ScalePageRoute(
                                child: ProfilePage(
                              appointment: doctorList[index],
                            )));
                      },
                      child: DoctorListTile(
                        name: doctorList[index].name,
                        backgroundColor: doctorList[index].backgroundColor,
                        hospital: doctorList[index].hospital,
                        imagePath: doctorList[index].imageUrl,
                      ),
                    );
                  },
                  childCount: doctorList.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
