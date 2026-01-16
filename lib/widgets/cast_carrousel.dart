import 'package:fl_damflix/models/credits_response.dart';
import 'package:flutter/material.dart';

class CastCarrousel extends StatelessWidget {
  const CastCarrousel({super.key});
  
  @override
  Widget build(BuildContext context) {
    final Cast cast = ModalRoute.of(context)!.settings.arguments as Cast;
    return Container(
      width: double.infinity,
      height: 150,
      //color: Colors.yellow,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _CastCard(cast: cast);
        }
      ),
    );
  }
}

class _CastCard extends StatelessWidget {
  const _CastCard({super.key,required this.cast});
  final Cast cast;
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
              image: NetworkImage('${cast.fullProfilePath}'),
              height: 100,
              width: 80,
              fit: BoxFit.cover
            ),
          ),

          Text(
            '${cast.name}',
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