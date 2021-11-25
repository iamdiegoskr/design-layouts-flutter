import 'package:flutter/material.dart';

class CustomNavigationBottom extends StatelessWidget {
  const CustomNavigationBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink.shade300,
      unselectedItemColor: const Color(0xffA699B6),
      backgroundColor: const Color(0xff2C0561),
      //Deben ser mas de 2 items.
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: 'Calendario'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart_outline_outlined),
          label: 'Grafica'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_rounded),
          label: 'Usuarios'
        ),
      ]
    );
  }
}