import 'package:flutter/material.dart';
import 'package:flutter_learn/core/counter_button.dart';

class StatefulLearnView extends StatefulWidget {
  const StatefulLearnView({super.key});

  @override
  State<StatefulLearnView> createState() => _StatefulLearnViewState();
}

class _StatefulLearnViewState extends State<StatefulLearnView> {
  int _countValue = 0;

  void _updateCount(bool isIncrement) {
    if (isIncrement) {
      _countValue++;
    } else {
      _countValue--;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CounterButton(
            onPressed: () {
              _updateCount(true);
            },
            icon: Icons.plus_one_outlined,
          ),
          CounterButton(
            onPressed: () {
              _updateCount(false);
            },
            icon: Icons.exposure_minus_1_outlined,
          ),
        ],
      ),
      body: Center(
        child: Text(
          _countValue.toString(),
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
