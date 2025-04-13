import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/tabs/hadith/hadeeth_container.dart';

class Hadith extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
  itemCount: 50,
  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) => hadeethContainer(index: itemIndex+1,),
     options: CarouselOptions(
      height: 700  ,
      enlargeCenterPage: true ,
     ),
) ;
  }
}