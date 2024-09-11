import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.limeAccent),
              ),
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(backgroundColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.green;
                } else {
                  return Colors.orangeAccent;
                }
              })),
              child: const Text('Elevated Button'),
            ),
            ElevatedButton.icon(
                onPressed: () {}, label: const Text('Elevated Button with Icon'), icon: const Icon(Icons.home)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.invert_colors_rounded),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.flood_sharp),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(backgroundColor: Colors.deepOrangeAccent),
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
            InkWell(
              onTap: () {},
              child: const Text('InkWell'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                  child: Text(
                    'Place Bid',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
