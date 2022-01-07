import 'package:doctor_consultation/context_extension.dart';
import 'package:doctor_consultation/models/apointment.dart';
import 'package:doctor_consultation/widgets/consultation_tile.dart';
import 'package:flutter/material.dart';
import 'package:doctor_consultation/widgets/profile_listtile.dart';

class ProfilePage extends StatelessWidget {
  final Appointment appointment;
  const ProfilePage({Key? key, required this.appointment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0XFFCFE4FF),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: const Color(0XFFCFE4FF),
              expandedHeight: context.height * .3,
              centerTitle: true,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/doctors.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverFillRemaining(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36),
                    topRight: Radius.circular(36),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    ProfileListTile(imagePath: appointment.imageUrl),
                    const SizedBox(height: 30),
                    Text(
                      appointment.name,
                      style: const TextStyle(
                          color: Color(0XFF1E1C61),
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      appointment.about,
                      style: TextStyle(
                          color: const Color(0XFF1E1C61).withOpacity(.65)),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Upcoming Schedules',
                      style: TextStyle(
                          color: Color(0XFF1E1C61),
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: ScrollConfiguration(
                        behavior: const ScrollBehavior(),
                        child: ListView.builder(
                          padding: const EdgeInsets.only(top: 0.0),
                          itemCount: 7,
                          itemBuilder: (context, index) {
                            return const ConsultationTile();
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
