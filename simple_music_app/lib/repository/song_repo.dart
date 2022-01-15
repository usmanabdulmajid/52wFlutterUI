import 'dart:typed_data';

import 'package:on_audio_query/on_audio_query.dart';
import 'package:simple_music_app/model/audio_model.dart';
import 'package:simple_music_app/repository/isong_reop.dart';

class SongRepo implements ISongRepo {
  final OnAudioQuery audioQuery;
  SongRepo(this.audioQuery);
  @override
  Future<List<AudioModel>> fetchSongs() async {
    bool status = await audioQuery.permissionsStatus();
    if (!status) await audioQuery.permissionsRequest();
    final songList = await audioQuery.querySongs();

    List<AudioModel> songs = songList.map((e) {
      return AudioModel(e.id, e.duration, e.displayNameWOExt);
    }).toList();
    return songs;
  }

  @override
  Future<Uint8List?> fetchArtWork(int songId) async {
    return await audioQuery.queryArtwork(songId, ArtworkType.AUDIO);
  }
}
