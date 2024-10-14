import 'package:flutter/material.dart';
import 'package:flutter_learn/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});
  final String _title = 'Stack Demo View';
  final double _cardHeight = 80;
  final String _cardTitle = 'Archcs National Park';
  final String _cardSubTitle = 'Agna, India';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(children: [
              Positioned.fill(
                bottom: _cardHeight / 2,
                child: const RandomImage(),
              ),
              Positioned(
                height: _cardHeight,
                right: 50,
                left: 50,
                bottom: 0,
                child: Card(
                  child: ListTile(
                    title: Text(_cardTitle),
                    subtitle: Row(
                      children: [
                        const Icon(Icons.location_on_outlined),
                        Text(_cardSubTitle),
                      ],
                    ),
                    trailing: Text('\$1050',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.orange[800])),
                  ),
                ),
              ),
            ]),
          ),
          const Spacer(flex: 6),
        ],
      ),
    );
  }
}
