import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key});
  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${keys.enWelcome} ${keys.name}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: ProjectStyles.welcomStyle,
            ),
            Text(
              '${keys.trWelcome} ${keys.name}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: ProjectStyles.welcomStyle,
            ),
            Text(
              '${keys.spWelcome} ${keys.name}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: ProjectColors.welcomeColor),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomStyle = const TextStyle(
    fontSize: 24,
    color: Colors.lime,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    decoration: TextDecoration.underline,
  );
}

class ProjectColors {
  static Color welcomeColor = Colors.redAccent;
}

class ProjectKeys {
  final String trWelcome = 'Merhaba';
  final String enWelcome = 'Hello';
  final String spWelcome = 'Hola';
  final String name = 'Ahmet';
}
