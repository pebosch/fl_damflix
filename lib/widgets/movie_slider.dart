import 'package:fl_damflix/models/models.dart';
import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {

  final List<Result> movies;

  const MovieSlider({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 315,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:EdgeInsets.all(15),
            child: Text('Favoritas', style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold),)
          ),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (context, index){
                return _MoviePoster( movie: movies[index]);
              }
            ),
          )
          
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {

  final Result movie;

  const _MoviePoster({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      margin: const EdgeInsets.symmetric( horizontal: 10),
      child: Column(
        children: [
          // Cartel
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: movie),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'), 
                image: NetworkImage( movie.fullPosterImg ),
                width: 130,
                height: 190,
                fit: BoxFit.cover
                ),
            ),
          ),
          SizedBox( height: 8),
          // Titulo
          Text(
          movie.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}