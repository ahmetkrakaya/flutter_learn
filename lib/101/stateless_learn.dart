import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            const _TitleWidget(title: 'Nazif'),
            _emptyBox(),
            const _TitleWidget(title: 'Ahmet'),
            _emptyBox(),
            const _TitleWidget(title: 'Ebrar'),
            _emptyBox(),
            const ContainerWidget(),
          ],
        ),
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(height: 10);
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
      height: 100,
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
