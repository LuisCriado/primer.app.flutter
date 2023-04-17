import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  final options = const [
    'Dragon Ball',
    'Caballeros del Zodiaco',
    'Detective Conan',
    'Los Alcones Galacticos'
  ];
  const ListviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(' Vista 1'),
        ),
        body: ListView(
          children: [
            ...options
                .map((serie) => ListTile(
                      title: Text(serie),
                      trailing: Icon(Icons.arrow_right_sharp),
                    ))
                .toList(),
            Divider()
          ],
        ));
  }
}
