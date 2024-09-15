import 'package:flutter/material.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({super.key});
  final String _title = 'AppBar Learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Tüm projede bütünlük için bazı özellikleri Theme üzerinden vermek daha sağlıklı.
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left_outlined),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu_outlined)),
          const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
