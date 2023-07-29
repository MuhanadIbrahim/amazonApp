import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';


class Custom_slideshow extends StatelessWidget {
  const Custom_slideshow({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 315,
      color: Colors.blue,
      child: ImageSlideshow(autoPlayInterval: 3000,
      
          isLoop: true,children: [Image.asset(
      'assets/pic1.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/pic2.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/pic3.jpg',
      fit: BoxFit.cover,
    ), Image.asset(
      'assets/pic4.jpg',
      fit: BoxFit.cover,
    ),Image.asset(
      'assets/pic5.jpg',
      fit: BoxFit.cover,
    )]),
    );
  }
}
