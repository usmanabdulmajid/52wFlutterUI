import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFDFE0E2),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 15),
                    child: Icon(
                      Icons.chevron_left,
                      size: 40,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: PhysicalModel(
                        color: Colors.white,
                        elevation: 24.0,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(200),
                          bottomRight: Radius.circular(200),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * .5,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(200),
                              bottomRight: Radius.circular(200),
                            ),
                            image: DecorationImage(
                                image: AssetImage('assets/images/NF.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10.0, top: 30),
                    child: ImageIcon(
                      AssetImage('assets/images/menu .png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Songs',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              // List.generate(20, (index) {
              //   return ListTile();
              // })
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.shuffle),
              Row(
                children: [
                  const Icon(Icons.skip_previous_rounded),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isPlaying = !_isPlaying;
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        border: Border.all(color: Colors.white, width: 3.0),
                      ),
                      alignment: Alignment.center,
                      child: _isPlaying
                          ? const Icon(
                              Icons.pause,
                              color: Colors.white,
                            )
                          : const Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Icon(Icons.skip_next),
                ],
              ),
              const Icon(Icons.repeat)
            ],
          ),
        ),
      ),
    );
  }
}
