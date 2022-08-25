import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const RandomImage(),
              dense: true,
              onTap: () {},
              subtitle: const Text('How do you use your card?'),
              leading: const Icon(Icons.money),
              minVerticalPadding: 0,
              trailing:
                  const SizedBox(width: 20, child: Icon(Icons.chevron_right)),
            ),
          ),
        ],
      ),
    );
  }
}
