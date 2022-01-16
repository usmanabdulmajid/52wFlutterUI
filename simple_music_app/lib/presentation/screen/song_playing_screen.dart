import 'package:flutter/material.dart';
import 'package:simple_music_app/presentation/widgets/custom_song_slider.dart';
import 'package:simple_music_app/utils/helper_extension.dart';

class SongPlayingScreen extends StatefulWidget {
  const SongPlayingScreen({Key? key}) : super(key: key);

  @override
  State<SongPlayingScreen> createState() => _SongPlayingScreenState();
}

class _SongPlayingScreenState extends State<SongPlayingScreen> {
  bool _isPlaying = false;
  double _sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFDFE0E2),
        body: Container(
          width: context.width,
          height: context.height,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ImageIcon(
                      AssetImage('assets/images/Back.png'),
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
                          width: context.width,
                          height: context.height * .5,
                          padding: const EdgeInsets.only(bottom: 40),
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
                          child: Column(
                            verticalDirection: VerticalDirection.up,
                            children: const [
                              Text(
                                'NF',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Let you Down',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ImageIcon(
                      AssetImage('assets/images/menu .png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              //const CustomSongSlider(),
              Slider(
                activeColor: Colors.black,
                inactiveColor: const Color(0XFFADB1B2),
                value: _sliderValue,
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
                min: 0,
                max: 100,
              ),
              const SizedBox(height: 20),
              const Text('03:40'),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.shuffle),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      PhysicalModel(
                        color: const Color(0XFFDFE0E2),
                        borderRadius: BorderRadius.circular(40),
                        elevation: 4.0,
                        child: Container(
                          height: 55,
                          padding: const EdgeInsets.all(12),
                          width: context.width * .5,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(Icons.skip_previous),
                              Icon(Icons.skip_next)
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: (context.width * .10) + 35,
                        top: -10,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPlaying = !_isPlaying;
                            });
                          },
                          child: PhysicalModel(
                            color: const Color(0XFFDFE0E2),
                            elevation: 1.0,
                            shape: BoxShape.circle,
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                                border:
                                    Border.all(color: Colors.white, width: 5.0),
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
                        ),
                      ),
                    ],
                  ),
                  const Icon(Icons.repeat),
                ],
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
