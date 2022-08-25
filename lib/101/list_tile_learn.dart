import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  final imageUrl = 'https://picsum.photos/200/300';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Image.network(imageUrl, height: 100, fit: BoxFit.cover),
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
