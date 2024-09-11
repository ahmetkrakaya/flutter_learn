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
            const Divider(
              thickness: 3,
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
              child: Text(
                overflow: TextOverflow.ellipsis,
                'Hello, ${keys.name}, how are you?',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
              child: Text(
                overflow: TextOverflow.fade,
                maxLines: 1,
                'Hello ${keys.name}, how are you?',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
              child: Text(
                overflow: TextOverflow.fade,
                softWrap: false,
                'Hello ${keys.name}, how are you?',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text.rich(
              style: Theme.of(context).textTheme.headlineMedium,
              const TextSpan(text: 'Hello', children: <TextSpan>[
                TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
                TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
              ]),
            ),
            const SizedBox(
              height: 8,
            ),
            const SelectionArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Selectable Text'),
                  SelectionContainer.disabled(child: Text('Non-Selectable Text')),
                  Text('Selectable Text'),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            RichText(
              text: const TextSpan(text: 'Hello'),
              selectionRegistrar: SelectionContainer.maybeOf(context),
              selectionColor: const Color.fromARGB(172, 10, 193, 83),
            )
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
