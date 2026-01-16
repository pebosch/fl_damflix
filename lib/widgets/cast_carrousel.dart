import 'package:flutter/material.dart';

class CastCarrousel extends StatelessWidget {
  const CastCarrousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      //color: Colors.yellow,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _CastCard();
        }
      ),
    );
  }
}

class _CastCard extends StatelessWidget {
  const _CastCard({super.key});

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
              image: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/harrison-ford-joven-658b217b0e4eb.jpg'),
              height: 100,
              width: 80,
              fit: BoxFit.cover
            ),
          ),

          Text(
            'actor.name Harrison Ford',
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