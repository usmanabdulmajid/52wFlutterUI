import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:simple_music_app/model/audio_model.dart';
import 'package:simple_music_app/repository/iplayer.dart';
import 'package:simple_music_app/repository/isong_reop.dart';

part 'song_state.dart';

class SongCubit extends Cubit<SongState> {
  final ISongRepo songRepo;
  final IPlayer player;
  SongCubit(this.songRepo, this.player) : super(SongLoading());

  Future<void> loadSongs() async {
    final songs = await songRepo.fetchSongs();
    emit(SongLoaded(songs));
  }

  Future<void> play(String url) async {}

  Future<void> pause() async {}

  Future<void> resume() async {}
}
