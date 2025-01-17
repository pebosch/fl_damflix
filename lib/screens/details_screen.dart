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
              //Text('Prueba numero 1'),
              _InfoPelicula()
            ]),
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
      floating: true, 
      pinned: true, 
      snap: false,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          color: Colors.black54,
          alignment: Alignment.bottomCenter,
          child: Text('pelicula.titulo', style: TextStyle(color: Colors.white),)
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'), 
          image: NetworkImage('https://es.web.img2.acsta.net/medias/nmedia/18/35/41/59/18831270.jpg'),
          fit: BoxFit.cover,
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
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'), 
              image: NetworkImage('https://www.starwarsnewsnet.com/wp-content/uploads/2016/07/Starlog-02.jpg'),
              height: 250,
            ),
          ),

          SizedBox( width: 20,),

          Column(
            children: [
              Text('pelicula.titulo'),
              Text('pelicula.year'),
              Text('pelicula.director'),
              
              Row(
                children: [
                  Icon(Icons.star, size: 25, color: Colors.yellow),
                  Text('pelicula.valoracion')
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

