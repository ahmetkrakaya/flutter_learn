import 'package:flutter/material.dart';
import 'package:flutter_learn/101/container_sizedbox_learn_view.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scaffold Sample')),
      body: Center(
        child: Text('Hello', style: Theme.of(context).textTheme.displayMedium),
      ),
      backgroundColor: Colors.red,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                  ));
        },
        backgroundColor: Colors.greenAccent,
        child: const Icon(Icons.navigation_outlined),
      ),
      drawer: const Drawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: ProjectUtility.boxDecoration,
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: 'You'),
          BottomNavigationBarItem(icon: Icon(Icons.alarm_outlined), label: 'Alarm'),
        ]),
      ),
    );
  }
}
