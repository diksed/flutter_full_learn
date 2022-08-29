import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          FittedBox(child: Text('Merhaba', style: Theme.of(context).textTheme.headline1, maxLines: 1)),
          Container(color: Colors.red, height: 300),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(color: Colors.green, width: 200),
                Container(color: Colors.purple, width: 200),
                Container(color: Colors.green, width: 200),
                Container(color: Colors.purple, width: 200),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
        ],
      ),
    );
  }
}
