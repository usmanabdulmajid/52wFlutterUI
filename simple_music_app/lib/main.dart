import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:simple_music_app/cubit/song_cubit.dart';
import 'package:simple_music_app/presentation/screen/song_playing_screen.dart';
import 'package:simple_music_app/repository/player.dart';
import 'package:simple_music_app/repository/song_repo.dart';

import 'presentation/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SongCubit(
            SongRepo(OnAudioQuery()),
            Player(AudioPlayer()),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SongPlayingScreen(),
        builder: (context, child) {
          return AnnotatedRegion(
            child: child!,
            value: const SystemUiOverlayStyle(
              systemNavigationBarIconBrightness: Brightness.dark,
              systemNavigationBarColor: Color(0XFFDFE0E2),
            ),
          );
        },
      ),
    );
  }
}
