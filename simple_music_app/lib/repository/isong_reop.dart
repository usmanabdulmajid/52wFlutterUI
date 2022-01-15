import 'dart:typed_data';

import 'package:simple_music_app/model/audio_model.dart';

abstract class ISongRepo {
  Future<List<AudioModel>> fetchSongs();
  Future<Uint8List?> fetchArtWork(int songId);
}
