// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButtonWidgetView extends StatelessWidget {
  const CustomButtonWidgetView({super.key});
  final String buttonText = 'Food';
  final String buttonText2 = 'Answer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomButton(
                  buttonText: buttonText2,
                  onPressed: () {},
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          CustomButton(buttonText: buttonText, onPressed: () {}),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget with _ColorsUtility, _PaddingUtility {
  CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(shape: const StadiumBorder(), backgroundColor: redColor),
      child: Padding(
        padding: largePadding,
        child: Text(
          buttonText,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

mixin _ColorsUtility {
  final Color redColor = const Color.fromARGB(255, 240, 59, 13);
  final Color whiteColor = Colors.white;
}

mixin _PaddingUtility {
  final EdgeInsets mediumPadding = const EdgeInsets.all(8);
  final EdgeInsets largePadding = const EdgeInsets.all(16);
}
