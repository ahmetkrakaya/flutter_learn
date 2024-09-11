import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BuzzingText extends StatefulWidget {
  const BuzzingText({super.key});

  @override
  State<BuzzingText> createState() => _BuzzingTextState();
}

class _BuzzingTextState extends State<BuzzingText> {
  late LongPressGestureRecognizer _longPressRecognizer;

  @override
  void initState() {
    super.initState();
    _longPressRecognizer = LongPressGestureRecognizer()..onLongPress = _handlePress;
  }

  @override
  void dispose() {
    _longPressRecognizer.dispose();
    super.dispose();
  }

  void _handlePress() {
    HapticFeedback.vibrate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text.rich(
          TextSpan(
            text: 'Can you ',
            style: const TextStyle(color: Colors.black),
            children: <InlineSpan>[
              TextSpan(
                text: 'find the',
                style: const TextStyle(
                  color: Colors.green,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
                recognizer: _longPressRecognizer,
                mouseCursor: SystemMouseCursors.click,
              ),
              const TextSpan(
                text: ' secret?',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
