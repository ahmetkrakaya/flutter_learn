import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Learn View'),
      ),
      body: const Column(
        children: [
          CardComponent(text: 'Ebrar'),
          CardComponent(text: 'Ahmet'),
        ],
      ),
    );
  }
}

class CardComponent extends StatelessWidget {
  const CardComponent({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.redAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: 100,
        width: 300,
        child: Center(
            child: Text(
          text,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
        )),
      ),
    );
  }
}
