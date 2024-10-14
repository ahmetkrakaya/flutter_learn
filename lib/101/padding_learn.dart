import 'package:flutter/material.dart';
import 'package:flutter_learn/101/stateless_learn.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Padding(
            padding: ProjectPaddings.horizontal,
            child: ContainerWidget(),
          ),
          Padding(
            padding: ProjectPaddings.vertical,
            child: ContainerWidget(),
          ),
          Padding(
            padding: ProjectPaddings.all,
            child: ContainerWidget(),
          ),
        ],
      ),
    );
  }
}

class ProjectPaddings {
  static const horizontal = EdgeInsets.symmetric(horizontal: 10);
  static const vertical = EdgeInsets.symmetric(vertical: 10);
  static const all = EdgeInsets.all(10);
}
