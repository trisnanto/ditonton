import 'package:core/data/models/movie_table.dart';
import 'package:core/data/models/tv_table.dart';
import 'package:core/domain/entities/genre.dart';
import 'package:core/domain/entities/movie.dart';
import 'package:core/domain/entities/tv.dart';
import 'package:core/domain/entities/movie_detail.dart';
import 'package:core/domain/entities/tv_detail.dart';
import 'package:core/domain/entities/tv_episode.dart';
import 'package:core/domain/entities/tv_season.dart';

final testMovie = Movie(
  adult: false,
  backdropPath: '/muth4OYamXf41G2evdrLEg8d3om.jpg',
  genreIds: [14, 28],
  id: 557,
  originalTitle: 'Spider-Man',
  overview:
      'After being bitten by a genetically altered spider, nerdy high school student Peter Parker is endowed with amazing powers to become the Amazing superhero known as Spider-Man.',
  popularity: 60.441,
  posterPath: '/rweIrveL43TaxUN0akQEaAXL6x0.jpg',
  releaseDate: '2002-05-01',
  title: 'Spider-Man',
  video: false,
  voteAverage: 7.2,
  voteCount: 13507,
);
final testTv = Tv(
  adult: false,
  backdropPath: "/path.jpg",
  firstAirDate: "2024-01-02",
  genreIds: [1, 2, 3, 4],
  id: 1,
  name: "name",
  originCountry: ["US"],
  originalLanguage: "en",
  originalName: "Original Name",
  overview: "overview",
  popularity: 5.0,
  posterPath: "posterPath",
  voteAverage: 1.0,
  voteCount: 5,
);

final testMovieList = [testMovie];
final testTvList = [testTv];

final testMovieDetail = MovieDetail(
  adult: false,
  backdropPath: 'backdropPath',
  genres: [Genre(id: 1, name: 'Action')],
  id: 1,
  originalTitle: 'originalTitle',
  overview: 'overview',
  posterPath: 'posterPath',
  releaseDate: 'releaseDate',
  runtime: 120,
  title: 'title',
  voteAverage: 1,
  voteCount: 1,
);
final testTvDetail = TvDetail(
  adult: false,
  backdropPath: "/path.jpg",
  genres: [Genre(id: 1, name: 'Action')],
  id: 1,
  name: "name",
  numberOfEpisodes: 10,
  numberOfSeasons: 2,
  originalName: "Original Name",
  overview: "overview",
  posterPath: "posterPath",
  voteAverage: 5.0,
  voteCount: 100,
);
final testTvSeason = TvSeason(
  id: "1",
  name: "name",
  episodes: [
    TvEpisode(
      airDate: DateTime.parse("2024-01-01"),
      episodeNumber: 1,
      episodeType: "type",
      id: 1,
      name: "name",
      overview: "overview",
      productionCode: "productionCode",
      runtime: 120,
      seasonNumber: 1,
      showId: 1,
      stillPath: "stillPath",
      voteAverage: 1.0,
      voteCount: 10,
    )
  ],
  overview: "overview",
  posterPath: "posterPath",
  voteAverage: 5.0,
  tvSeasonModelId: 1,
  seasonNumber: 1,
);

final testWatchlistMovie = Movie.watchlist(
  id: 1,
  title: 'title',
  posterPath: 'posterPath',
  overview: 'overview',
);
final testWatchlistTv = Tv.watchlist(
  id: 1,
  name: 'name',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testMovieTable = MovieTable.fromEntity(testMovieDetail);
final testTvTable = TvTable.fromEntity(testTvDetail);

final testMovieMap = {
  'id': 1,
  'overview': 'overview',
  'posterPath': 'posterPath',
  'title': 'title',
};
final testTvMap = {
  'id': 1,
  'overview': 'overview',
  'posterPath': 'posterPath',
  'name': 'name',
};