import 'package:flutter/material.dart';

class Listvie2Screen extends StatelessWidget {
  final options = const [
    'Dragon Ball',
    'Caalleros del Zodiaco',
    'Detective Conan',
    'Los Alcones Galacticos'
  ];
  const Listvie2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(' Vista 2'),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            onTap: () {
              final game = options[index];
              print(game);
            },
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_right_sharp),
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
