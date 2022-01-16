import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_music_app/cubit/song_cubit.dart';
import 'package:simple_music_app/model/audio_model.dart';
import 'package:simple_music_app/utils/helper_extension.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    context.read<SongCubit>().loadSongs();
  }

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
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
                                'Perception',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
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
              BlocBuilder<SongCubit, SongState>(
                builder: (context, state) {
                  if (state is SongLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  SongLoaded songLoaded = state as SongLoaded;
                  List<AudioModel> songs = songLoaded.songs;
                  return Expanded(
                    child: ScrollConfiguration(
                      behavior: const ScrollBehavior(),
                      child: ListView.builder(
                        itemCount: songs.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: SizedBox(
                                width: 100,
                                child: Text(songs[index].songName!)),
                            trailing: Text(songs[index].duration!.toDuration),
                            onTap: () {},
                          );
                        },
                      ),
                    ),
                  );
                },
              )
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
                  const Icon(Icons.skip_previous),
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
