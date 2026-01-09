import 'package:fl_damflix/widgets/cast_carrousel.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              //Text('Probandoooooo')
              _InfoPelicula(),
              _Overview(),
              CastCarrousel()
            ])
          )
        ],
      )
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({super.key});

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
            child: Text('Titulo pelicula', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),)
          )
        ),
        centerTitle: true,
        background: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://pics.filmaffinity.com/star_wars_episode_v_the_empire_strikes_back-376120908-large.jpg')
        ),
      ),
    );
  }
}

class _InfoPelicula extends StatelessWidget {
  const _InfoPelicula({super.key});

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
              image: NetworkImage('https://pics.filmaffinity.com/star_wars_episode_v_the_empire_strikes_back-701818523-large.jpg'),
              height: 150,
            ),
          ),

          SizedBox( width: 20,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('movie.title', style: Theme.of(context).textTheme.headlineMedium, overflow: TextOverflow.ellipsis, maxLines: 2,),
              Text('movie.year', style: Theme.of(context).textTheme.headlineSmall, overflow: TextOverflow.ellipsis, maxLines: 1,),

              Row(
                children: [
                  Icon(Icons.star_half, size: 30, color: Colors.orange,),
                  Text('movie.rate', style: Theme.of(context).textTheme.headlineSmall, overflow: TextOverflow.ellipsis, maxLines: 1,),
                ],
                )

            ],
          )
        ],
      ),

    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text(
        'movie.description. Id excepteur consequat nisi irure excepteur amet proident dolor nisi quis sunt est voluptate. Officia id ad reprehenderit culpa deserunt. Consequat culpa anim sint id irure laborum anim. Nostrud sit deserunt culpa ex aute reprehenderit qui laboris excepteur quis occaecat adipisicing.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}