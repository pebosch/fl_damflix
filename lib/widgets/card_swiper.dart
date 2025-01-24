import 'package:card_swiper/card_swiper.dart';
import 'package:fl_damflix/models/models.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key, required this.movies});

  final List<Result> movies;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      //color: Colors.red,
      padding: const EdgeInsets.all(30),
      child: Swiper(
        itemCount: movies.length,
        layout: SwiperLayout.STACK,
        itemWidth: size.width*0.6,
        itemHeight: size.height*0.9,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: 'movie-instance'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'), 
                image: NetworkImage('https://i.pinimg.com/originals/f4/d7/24/f4d72491c0366c61b1d24912bc0a8079.png'),
                fit: BoxFit.cover,
              ),
            ),
          );
        },

        )
    );
  }
}