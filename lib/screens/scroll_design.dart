
import 'package:flutter/material.dart';

class ScrollDesign extends StatelessWidget {
  const ScrollDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const boxDecoration = BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.7], //puntos de quiebre
            colors: [
              Color(0xff7eebcb),
              Color(0xff50c2dd),
            ]
          )
      );

    final PageController controller = PageController(initialPage: 0);

    return  Scaffold(
      //backgroundColor:const Color(0xff50c2dd),
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          controller: controller,
          scrollDirection: Axis.vertical,
          children: const [
            PageOne(),
            PageTwo()
          ],
        ),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  const [
          Background(),
          MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const textStyle = TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,
              color: Colors.white
            );

    return SafeArea(
      bottom: false,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 60,),
            const Text('11°', style: textStyle),
            const Text('Viernes', style: textStyle),
            Expanded(child: Container()),
            const Icon(Icons.arrow_downward, color: Colors.white, size: 50,)
          ],
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff50c2dd),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(
        width: double.infinity,
        fit: BoxFit.cover,
        image: AssetImage('assets/scroll-1.png')
    ));
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff50c2dd),
        child: Center(
          child: TextButton(
            onPressed: (){},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 22),
              child: const Text(
                'Bienvenido',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue.shade800,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              )
            ),
          ),
        ),
      ),
    );
  }
}