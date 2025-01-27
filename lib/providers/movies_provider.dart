import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fl_damflix/models/models.dart';

class MoviesProvider extends ChangeNotifier{

  //https://api.themoviedb.org/3/movie/now_playing?api_key=f13f15ad46ff8743695b6f4ab37a82c7&language=es-ES&page=1
  String _apiKey = 'f13f15ad46ff8743695b6f4ab37a82c7';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';

  List <Result> onDisplayMovies = [];
  List <Result> favoritasMovies = [];

  MoviesProvider(){
    print('MoviesProvider esta inicializado');

    this.getOnDisplayMovies();
    this.getFavoriteMovies();
  }

  getOnDisplayMovies() async {
      //print('getOnDisplayMovies');
      var url = Uri.https(_baseUrl, '3/movie/now_playing', {
        'api_key': _apiKey,
        'language': _language,
        'page': '1'
      });
      var response = await http.get(url);

      //final Map<String, dynamic> decodeData = json.decode(response.body );

      final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);

      //print( response.body );

      //print ( decodeData['results']);
      print( nowPlayingResponse.results[1].title);
      onDisplayMovies = nowPlayingResponse.results;

      notifyListeners();
  }

    getFavoriteMovies() async {
      var url = Uri.https(_baseUrl, '3/movie/popular', {
        'api_key': _apiKey,
        'language': _language,
        'page': '1'
      });
      var response = await http.get(url);

      final favoritasResponse = FavoritasResponse.fromJson(response.body);

      favoritasMovies = [ ...favoritasMovies, ...favoritasResponse.results ];

      notifyListeners();
  }


}