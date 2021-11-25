import 'dart:math';

import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5,0.9],
          colors:[
            Color(0xff29084D),
            Color(0xff1B0633)
        ])
      );

    return Stack(
      children: [
        //Purple linearGradient
        Container(
          decoration: boxDecoration,
        ),

        //Pink box
        const Positioned(
          top: -80,
          left: -40,
          child: _PinkBox()
        )


      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360,
        width: 360,
        //color: Colors.pink,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: const LinearGradient(
            stops: [0.3,0.9],
            colors: [
              Color.fromRGBO(243, 89, 163, 1),
              Color.fromRGBO(227, 66, 144, 1),
            ]
          )
        ),
      ),
    );
  }
}