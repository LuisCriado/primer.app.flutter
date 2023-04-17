import 'package:flutter/material.dart';

import 'package:myapp/wiches/latarjeta_del_year.dart';

import '../wiches/custom_card_type.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tarjetitas'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const[
            CustomCardType1(),
            SizedBox(height: 10),
          CustomCard2(name: 'Yu Hi ho',imageUrl: 'https://as01.epimg.net/meristation/imagenes/2021/07/31/reportajes/1627766112_935650_1627941879_noticia_normal.jpg',),
                SizedBox(height: 10),
          CustomCard2(name: 'Tunder Cats',imageUrl: 'https://e.rpp-noticias.io/xlarge/2022/06/07/080808_1269702.jpg',),
                SizedBox(height: 10),
          CustomCard2(name: 'Dragon Ball',imageUrl: 'https://www.elsoldeacapulco.com.mx/incoming/mbjyrl-dragon-ball-super-broly.jpg/ALTERNATES/LANDSCAPE_1140/Dragon-Ball-Super-Broly.jpg',),
                SizedBox(height: 10),
          CustomCard2(name: 'Alcones Galacticos',imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH0Zl7gZa48DQT-JR4XYpaoZZU3kiyqXCrxtltaMMqVL0UKs9oi_gZ4J5kDpI7x2xIRW8&usqp=CAU',),
           SizedBox(height: 100),
          
          
          ],
        ));
  }
}
