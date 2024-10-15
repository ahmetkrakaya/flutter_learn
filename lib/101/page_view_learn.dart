import 'package:flutter/material.dart';
import 'package:flutter_learn/demos/note_demos_view.dart';
import 'package:flutter_learn/demos/stack_demo_view.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController();
  int _currentPageIndex = 1;

  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(
              '$_currentPageIndex',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(duration: _DurationUtility.low, curve: Curves.linearToEaseOut);
            },
            child: const Icon(Icons.chevron_left_outlined),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(duration: _DurationUtility.low, curve: Curves.linearToEaseOut);
              },
              child: const Icon(Icons.chevron_right_outlined),
            ),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: const [
          NoteDemosApp(),
          StackDemoView(),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const low = Duration(seconds: 1);
}
