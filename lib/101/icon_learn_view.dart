import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final String _title = 'Icon Learn View';
  final IconSizes iconSize = IconSizes();
  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              size: iconSize.small,
              color: iconColors.aquamarine,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              size: iconSize.medium,
              color: iconColors.froly,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              size: iconSize.large,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double small = 40;
  final double medium = 60;
  final double large = 80;
}

class IconColors {
  final Color froly = const Color(0xFFF57584);
  final Color aquamarine = const Color(0xFF75F5A7);
}
