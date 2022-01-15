part of 'song_cubit.dart';

@immutable
abstract class SongState extends Equatable {}

class SongLoading extends SongState {
  @override
  List<Object?> get props => [];
}

class SongLoaded extends SongState {
  final List<AudioModel> songs;
  SongLoaded(this.songs);

  @override
  List<Object?> get props => [];
}
