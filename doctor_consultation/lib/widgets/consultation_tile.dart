import 'package:flutter/material.dart';

class ConsultationTile extends StatelessWidget {
  const ConsultationTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: const Color(0XFFEDF1FA),
          borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Container(
          width: 45,
          height: 45,
          padding: const EdgeInsets.all(4.0),
          decoration: const BoxDecoration(
            color: Color(0XFFD8E3FF),
          ),
          alignment: Alignment.center,
          child: Column(
            children: const [
              Text(
                '12',
                style: TextStyle(
                  color: Color(0XFF4B7FFB),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //SizedBox(height: 10),
              Text(
                'jan',
                style: TextStyle(
                  color: Color(0XFF4B7FFB),
                ),
              ),
            ],
          ),
        ),
        title: const Text(
          'Consultation',
          style: TextStyle(
            color: Color(0XFF1E1C61),
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Row(
          children: const [
            Text('sunday'),
            SizedBox(width: 5),
            Text('9am - 11am')
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:doctor_consultation/widgets/profile_listtile.dart';

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.maxFinite,
//         height: double.maxFinite,
//         child: Stack(
//           children: [
//             Container(
//               width: double.maxFinite,
//               height: 280,
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   fit: BoxFit.cover,
//                   image: AssetImage('assets/images/doctors.jpg'),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 260,
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height,
//                 padding: const EdgeInsets.symmetric(horizontal: 24.0),
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(36),
//                     topRight: Radius.circular(36),
//                   ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(height: 30),
//                     const ProfileListTile(),
//                     const SizedBox(height: 30),
//                     const Text(
//                       'About Doctor',
//                       style: TextStyle(
//                           color: Color(0XFF1E1C61),
//                           fontWeight: FontWeight.w500),
//                     ),
//                     const SizedBox(height: 20),
//                     Text(
//                       'Dr. Stella is the to most heart surgeon in Flower Hospital. She has done over 100 successful surgeries within past three years. She has achieved several awards for her wonderful contribution in her own field. She\'s available for private consultaion for given schedules',
//                       style: TextStyle(
//                           color: const Color(0XFF1E1C61).withOpacity(.65)),
//                     ),
//                     const SizedBox(height: 20),
//                     const Text(
//                       'Upcoming Schedules',
//                       style: TextStyle(
//                           color: Color(0XFF1E1C61),
//                           fontWeight: FontWeight.w500),
//                     ),
//                     const SizedBox(height: 20),
//                     ConsultationTile()
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
