import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/101/image_learn.dart';

class NoteDemosApp extends StatelessWidget {
  const NoteDemosApp({super.key});
  final String _title = 'Create Your First Note';
  final String _text =
      'Add a note about anything your thoughts on climate change, or your history essay and share it witht the world.';
  final String _buttonText1 = 'Create A Note';
  final String _buttonText2 = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontal,
        child: Column(
          children: [
            PngImages(name: ImageItems().appleBook),
            _TitleWidget(title: _title),
            Padding(padding: PaddingItems.vertical, child: _TextWidget(text: _text)),
            const Spacer(),
            _createButton(context),
            TextButton(onPressed: () {}, child: Text(_buttonText2)),
            const SizedBox(
              height: ButtonHeights.buttonNormalHeight,
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: SizedBox(
          height: ButtonHeights.buttonNormalHeight,
          child: Center(
              child: Text(
            _buttonText1,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
          ))),
    );
  }
}

class _TextWidget extends StatelessWidget {
  const _TextWidget({super.key, required this.text, this.textAlign = TextAlign.center});

  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontal = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets vertical = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeights {
  static const double buttonNormalHeight = 60;
}
