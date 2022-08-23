import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TitleTextwidget(text: "veli"),
          _emptyBox(),
          const TitleTextwidget(text: "veli2"),
          _emptyBox(),
          const TitleTextwidget(text: "veli3"),
          _emptyBox(),
          const TitleTextwidget(text: "veli4"),
          const _CustomContainer(),
          _emptyBox(),
        ],
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(height: 10);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.red));
  }
}

class TitleTextwidget extends StatelessWidget {
  const TitleTextwidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headline3);
  }
}
