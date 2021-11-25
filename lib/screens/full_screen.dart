import 'package:basic_layout_app/widgets/background.dart';
import 'package:basic_layout_app/widgets/card_table.dart';
import 'package:basic_layout_app/widgets/custom_bottom_navigation.dart';
import 'package:basic_layout_app/widgets/page_title.dart';
import 'package:flutter/material.dart';

class FullScreen extends StatelessWidget {
  const FullScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          BackgroundWidget(),
          _HomeBody()
        ],
      ),
      bottomNavigationBar: CustomNavigationBottom(),
    );
  }
}


class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          //Titulos
          PageTitle(),

          //Card table.
          CardTableWidget()

        ],
      ),
    );
  }
}