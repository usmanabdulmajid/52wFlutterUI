import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:simple_music_app/repository/iplayer.dart';

class Player implements IPlayer {
  final AudioPlayer player;
  Player(this.player);
  late final StreamSubscription subscription;
  final StreamController<String> _duration =
      StreamController<String>.broadcast();

  @override
  Future<int> play(String uri) async {
    await player.play(uri, isLocal: true);
    final songLength = await player.getDuration();
    await initializeDateFormatting('en_GB');
    subscription = player.onDurationChanged.listen((event) {
      final date = DateTime.fromMillisecondsSinceEpoch(event.inMilliseconds);
      final time = DateFormat('mm:ss:', 'en_GB').format(date);
      _duration.sink.add(time);
    });
    return songLength;
  }

  @override
  Future<void> pause() async {
    await player.pause();
  }

  @override
  Future<void> resume() async {
    await player.resume();
  }

  @override
  Future<void> next() async {
    // TODO: implement prev
  }

  @override
  Future<void> prev() async {
    // TODO: implement prev
  }

  @override
  Stream<String> get songDuration => _duration.stream;

  @override
  Future<void> dispose() async {
    player.dispose();
    subscription.cancel();
    _duration.close();
  }
}
