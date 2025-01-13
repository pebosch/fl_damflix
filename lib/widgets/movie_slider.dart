import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      color: Colors.red,
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
              itemCount: 10,
              itemBuilder: (context, index){
                return Container(
                  width: 150,
                  height: 100,
                  color: Colors.blue,
                  margin: const EdgeInsets.all(10),
                );
              }
            ),
          )
          
        ],
      ),
    );
  }
}