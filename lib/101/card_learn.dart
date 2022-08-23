import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargins.cardMargin,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const SizedBox(
                height: 100, width: 300, child: Center(child: Text('Ali'))),
          ),
          Card(
            color: Theme.of(context).colorScheme.error,
            child: const SizedBox(height: 100, width: 100),
          ),
          _CustomCard(
            child: const SizedBox(
                height: 100, width: 300, child: Center(child: Text('Ali'))),
          )
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  final Widget child;
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

  _CustomCard({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      shape: roundedRectangleBorder,
      child: child,
    );
  }
}

// Borders
// StadiumBorder(),CircleBorder(),RoundedRectangleBorder(),