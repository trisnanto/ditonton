import 'package:dartz/dartz.dart';
import 'package:movies/domain/entities/movie.dart';
import 'package:movies/domain/repositories/movie_repository.dart';
import 'package:movies/utils/failure.dart';

class GetNowPlayingMovies {
  final MovieRepository repository;

  GetNowPlayingMovies(this.repository);

  Future<Either<Failure, List<Movie>>> execute() {
    return repository.getNowPlayingMovies();
  }
}
