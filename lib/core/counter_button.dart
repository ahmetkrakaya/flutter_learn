import 'package:flutter/material.dart';

class CounterButton extends StatefulWidget {
  const CounterButton({super.key, required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        onPressed: widget.onPressed,
        child: Icon(widget.icon),
      ),
    );
  }
}
