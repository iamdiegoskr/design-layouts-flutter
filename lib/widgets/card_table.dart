import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class CardTableWidget extends StatelessWidget {
  const CardTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const <TableRow>[
        TableRow(
          children: [
            _SingleCard(icon: Icons.person, color: Colors.pink, title: 'Users',),
            _SingleCard(icon: Icons.touch_app_rounded, color: Colors.green, title: 'Clickme',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.add, color: Colors.orange, title: 'Add',),
            _SingleCard(icon: Icons.touch_app_rounded, color: Colors.indigo, title: 'Call now',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.ac_unit_sharp, color: Colors.blue, title: 'Ice',),
            _SingleCard(icon: Icons.dark_mode_sharp, color: Colors.black, title: 'Mount',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.offline_bolt_sharp, color: Colors.red, title: 'Fire',),
            _SingleCard(icon: Icons.format_align_justify_outlined, color: Colors.green, title: 'Database',),
          ]
        ),
      ],
    );
  }
}


class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String title;

  const _SingleCard(
    {Key? key,
    required this.icon,
    required this.color,
    required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return _SingleCardBackground(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  //backgroundColor: Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                backgroundColor: color,
                child: Icon(icon, color: Colors.white, size: 28,),
                radius: 30,
              ),
              const SizedBox(height: 8),
              Text(title, style: const TextStyle(
                fontSize: 16,
                color: Colors.white
                ),
              )
            ],
      )
    );
  }
}

class _SingleCardBackground extends StatelessWidget {

  final Widget child;

  const _SingleCardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(58, 12, 119, .5),
              borderRadius: BorderRadius.circular(16),
              boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 15.0,
                    offset: Offset(0.0, 0.65)
                )
              ],
            ),
            child: child,
          ),
        ),
      ),
    );;
  }
}