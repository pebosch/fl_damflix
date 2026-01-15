import 'package:fl_damflix/models/models.dart';
import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key, required this.popularMovies});
  final List<Result> popularMovies;

  @override
  Widget build(BuildContext context) {

    if (this.popularMovies.length == 0) {
      return Container(child: Center(child: CircularProgressIndicator(),),);
    }
    return Container(
      width: double.infinity,
      height: 275,
      //color: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text('Favoritas', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: popularMovies.length,
              itemBuilder: (context, index) {
                final movie = popularMovies[index];
                return _MoviePoster(movie: movie,);
              }
            ),
          ),

        ],
      ),

    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({super.key, required this.movie});
  final Result movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      //color: Colors.blue,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: movie),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'), 
                image: NetworkImage(movie.fullPosterImg),
                width: 130,
                height: 190,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox( height: 5,),
          Text(
            movie.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            )  
        ],
      )
    );           
  }
}