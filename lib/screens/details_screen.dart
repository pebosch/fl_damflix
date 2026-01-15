import 'package:fl_damflix/models/models.dart';
import 'package:fl_damflix/widgets/cast_carrousel.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final Result movie = ModalRoute.of(context)!.settings.arguments as Result;
    //print(movie.title);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(movie: movie,),
          SliverList(
            delegate: SliverChildListDelegate([
              //Text('Probandoooooo')
              _InfoPelicula(movie: movie,),
              _Overview(movie: movie,),
              CastCarrousel()
            ])
          )
        ],
      )
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  final Result movie;
  const _CustomAppBar({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      floating: false,
      pinned: true,
      snap: false,
      flexibleSpace: FlexibleSpaceBar(
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          //color: Colors.white54,
          child: Container(
            width: double.infinity,
            color: Colors.white54,
            child: Text(movie.title, textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),)
          )
        ),
        centerTitle: true,
        background: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage(movie.fullBackDropImg)
        ),
      ),
    );
  }
}

class _InfoPelicula extends StatelessWidget {
  final Result movie;
  const _InfoPelicula({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only( top: 20),
      padding: EdgeInsets.symmetric( horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'), 
              image: NetworkImage(movie.fullPosterImg),
              height: 150,
            ),
          ),

          SizedBox( width: 20,),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(movie.title, style: TextStyle(fontSize: 20), overflow: TextOverflow.ellipsis, maxLines: 2,),
                Text(movie.releaseDate.year.toString(), style: TextStyle(fontSize: 15), overflow: TextOverflow.ellipsis, maxLines: 1,),
            
                Row(
                  children: [
                    Icon(Icons.star_half, size: 30, color: Colors.orange,),
                    Text(movie.voteAverage.toString(), style: Theme.of(context).textTheme.headlineSmall, overflow: TextOverflow.ellipsis, maxLines: 1,),
                  ],
                  )
            
              ],
            ),
          )
        ],
      ),

    );
  }
}

class _Overview extends StatelessWidget {
  final Result movie;
  const _Overview({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text(
        movie.overview,
        textAlign: TextAlign.justify,
      ),
    );
  }
}