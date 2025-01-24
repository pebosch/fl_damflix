import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier{

  //https://api.themoviedb.org/3/movie/now_playing?api_key=f13f15ad46ff8743695b6f4ab37a82c7&language=es-ES&page=1
  String _apiKey = 'f13f15ad46ff8743695b6f4ab37a82c7';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';

  MoviesProvider(){
    print('MoviesProvider esta inicializado');

    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
      //print('getOnDisplayMovies');
      var url = Uri.https(_baseUrl, '3/movie/now_playing', {
        'api_key': _apiKey,
        'language': _language,
        'page': '1'
      });
      var response = await http.get(url);

      print( response.body );
  }


}