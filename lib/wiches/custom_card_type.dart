import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading:
                Icon(Icons.account_balance_rounded, color: AppTheme.primary),
            title: Text('soy un titulo'),
            subtitle: Text(
                'Culpa ullamco nisi amet aliqua aliquip laboris ea sit anim minim magna cupidatat nulla.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancelar')),
                TextButton(onPressed: () {}, child: const Text('ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
