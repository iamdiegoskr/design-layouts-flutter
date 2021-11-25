import 'package:flutter/material.dart';

class FirstLayout extends StatelessWidget {
  const FirstLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:   const [
            //Imagen principal de la app.
            _ImageMain(),
            //Titulo principal.
            Title(),
            //Seccion de los iconos
            IconsSection(),
            //Contenido
            TextContent(),
            TextContent(),
            TextContent(),
          ],
        ),
      ),
    );
  }
}


class _ImageMain extends StatelessWidget {
  const _ImageMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
      width: double.infinity,
      height: 280,
      fit: BoxFit.cover,
      placeholder: 'assets/image-loading.gif',
      image: 'https://images.pexels.com/photos/247431/pexels-photo-247431.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Bosque pacifico de elefantes', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),),
              Text('Ubicado en australia', style: TextStyle(
                color: Colors.black45
              ),)
            ],
          ),
          Expanded(child: Container()),
          Row(
            children: const [
              Icon(Icons.star, color: Colors.orange,),
              SizedBox(width: 4),
              Text('100')
            ],
          )
        ],
      ),
    );
  }
}

class IconsSection extends StatelessWidget {
  const IconsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          ButtonItem(icon:Icons.call, title: 'Call'),
          ButtonItem(icon: Icons.arrow_circle_up, title: 'Routes'),
          ButtonItem(icon: Icons.share, title: 'Share')
        ],
      ),
    );
  }
}

class ButtonItem extends StatelessWidget {

  final IconData icon;
  final String title;

  const ButtonItem({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: (){},
          icon: Icon(icon, color: Colors.indigo, )
        ),
        Text(title.toUpperCase())
      ],
    );
  }
}

class TextContent extends StatelessWidget {
  const TextContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const Text('Cupidatat fugiat sunt dolore veniam adipisicing. Do dolor consequat aliqua fugiat pariatur adipisicing aute veniam do anim elit. Velit magna nulla sit deserunt culpa mollit excepteur fugiat Lorem ipsum do nostrud reprehenderit pariatur. Magna culpa eiusmod nostrud laborum dolor officia irure occaecat ex elit pariatur. Voluptate anim deserunt officia dolore nisi. Nisi ex id cupidatat nisi tempor quis. Cillum Lorem nostrud minim do in duis elit velit.',
      textAlign: TextAlign.justify,),
    );
  }
}


