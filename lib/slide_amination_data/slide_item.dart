import 'package:demologin/slide_amination_data/slider_data.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';


class SlideItem extends StatelessWidget {
  final int index;

  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ZStack([
      ClipPath(
              child: Image(
            image: AssetImage(slideList[index].imageUrl),
            fit: BoxFit.cover,
          )),
          
        
      
         
     
    ]);
  }
}
