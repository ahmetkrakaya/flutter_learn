import 'package:flutter/material.dart';

class ContainerSizedboxLearnView extends StatelessWidget {
  const ContainerSizedboxLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
      ),
      body: Column(
        children: [
          //SizedBox
          SizedBox(
            width: 300,
            height: 300,
            child: Text('a' * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('c' * 50),
          ),
          const Divider(),

          //Container
          Container(
            height: 80,
            constraints: const BoxConstraints(maxWidth: 150, minWidth: 100, maxHeight: 100),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
            child: const Text('aa'),
          ),
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    gradient: const LinearGradient(colors: [Colors.blueAccent, Colors.greenAccent]),
    boxShadow: const [
      BoxShadow(color: Colors.redAccent, offset: Offset(0.1, 1), blurRadius: 10),
    ],
    border: Border.all(width: 10, color: Colors.white38),
  );
}
