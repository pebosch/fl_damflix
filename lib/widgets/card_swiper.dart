import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height / 2,
      //color: Colors.yellow,
      padding: const EdgeInsets.all(25),
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.9,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: 'movie-instance'),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'), 
                image: NetworkImage('https://m.media-amazon.com/images/I/71sDqDg3yRL._AC_UF894,1000_QL80_.jpg'),
                fit: BoxFit.cover
              ),
            ),
          );
        },
      ),
      
    );
  }
}