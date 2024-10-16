import 'package:flutter/material.dart';
import 'package:flutter_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: const RandomImage(),
                subtitle: const Text('How do you use your card.'),
                leading: const Icon(Icons.money),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
                //contentPadding: EdgeInsets.zero,
                //tileColor: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
