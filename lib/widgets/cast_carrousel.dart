<<<<<<< HEAD
import 'package:fl_damflix/models/credits_response.dart';
=======

import 'package:fl_damflix/providers/actors_provider.dart';
>>>>>>> a3489bd (Actores by Alejandro)
import 'package:flutter/material.dart';

import '../models/actors_response.dart';

class CastCarrousel extends StatelessWidget {
<<<<<<< HEAD
  const CastCarrousel({super.key});
  
=======
  const CastCarrousel({super.key, required this.actorsProvider});
  final ActorsProvider actorsProvider;

>>>>>>> a3489bd (Actores by Alejandro)
  @override
  Widget build(BuildContext context) {
    final Cast cast = ModalRoute.of(context)!.settings.arguments as Cast;
    return Container(
      width: double.infinity,
      height: 150,
      //color: Colors.yellow,
      child: ListView.builder(
        itemCount: actorsProvider.onDisplayActors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
<<<<<<< HEAD
          return _CastCard(cast: cast);
=======
          return _CastCard(cast: actorsProvider.onDisplayActors[index]);
>>>>>>> a3489bd (Actores by Alejandro)
        }
      ),
    );
  }
}

class _CastCard extends StatelessWidget {
<<<<<<< HEAD
  const _CastCard({super.key,required this.cast});
  final Cast cast;
=======
  const _CastCard({super.key, required this.cast});
  final Cast cast;

>>>>>>> a3489bd (Actores by Alejandro)
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 5),
      width: 80,
      height: 120,
      //color: Colors.blue,
      child: Column(
        children: [
          //Imagen del actor
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'), 
<<<<<<< HEAD
              image: NetworkImage('${cast.fullProfilePath}'),
=======
              image: NetworkImage(cast.fullProfilePath),
>>>>>>> a3489bd (Actores by Alejandro)
              height: 100,
              width: 80,
              fit: BoxFit.cover
            ),
          ),

          Text(
<<<<<<< HEAD
            '${cast.name}',
=======
            cast.name,
>>>>>>> a3489bd (Actores by Alejandro)
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            )
          //Nombre
        ],
      ),
    );
  }
}