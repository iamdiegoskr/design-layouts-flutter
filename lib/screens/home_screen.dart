import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diseños en flutter'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            CustomButtonNavigator(title:'Diseño basico', routeToNavigate:'first_layout'),
            CustomButtonNavigator(title:'Diseño con scroll', routeToNavigate:'scroll_layout'),
            CustomButtonNavigator(title:'Diseño complejo', routeToNavigate:'full_layout'),
          ],
        ),
      ),
    );
  }
}

class CustomButtonNavigator extends StatelessWidget {

  final String title;
  final String routeToNavigate;

  const CustomButtonNavigator({
    Key? key,
    required this.title,
    required this.routeToNavigate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextButton(
      style: TextButton.styleFrom(
        fixedSize: const Size.fromWidth(160),
        backgroundColor: Colors.indigoAccent,
        primary: Colors.white
      ),
      onPressed: (){
        Navigator.pushNamed(context, routeToNavigate);
      },
      child: Text(title)
    );
  }
}