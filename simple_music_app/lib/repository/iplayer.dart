abstract class IPlayer {
  Future<int> play(String uri);
  Future<void> pause();
  Future<void> next();
  Future<void> prev();
  Future<void> resume();
  Stream<String> get songDuration;
  Future<void> dispose();
}
