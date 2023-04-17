import 'package:flutter/material.dart';
import 'package:myapp/router/app_routes.dart';

import 'package:myapp/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutes.menuOption;

    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes enm Fluter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading:
                      Icon(menuOption[index].icon, color: AppTheme.primary),
                  title: Text(menuOption[index].namer),
                  onTap: () {
                    //  final route = MaterialPageRoute(
                    //    builder: (context) => Listvie2Screen());

                    //Navigator.push(context, route);

                    Navigator.pushNamed(context, menuOption[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOption.length));
  }
  
}
