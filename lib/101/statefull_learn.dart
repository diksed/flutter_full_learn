import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

import '../product/counter_hello_button.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;

  void _updateCounter(bool isIncrement) {
    setState(() {
      if (isIncrement) {
        _countValue += 1;
      } else {
        _countValue -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.welcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _deincrementButton(),
          _incrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(child: Text(_countValue.toString(), style: Theme.of(context).textTheme.headline2)),
          const Placeholder(),
          const CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _deincrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(false);
      },
      child: const Icon(Icons.remove),
    );
  }

  Padding _incrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(true);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
