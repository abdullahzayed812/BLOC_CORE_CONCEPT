import 'package:flutter/material.dart';
import 'package:flutter_bloc_core_concepts/configs/localization.dart';

class LocalizationPage extends StatelessWidget {
  const LocalizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      drawer: const Drawer(
        child: Center(
          child: Text("Drawer content..."),
        ),
      ),
      appBar: AppBar(
        title: const Text("Localization"),
      ),
      body: Center(
        child: Text(
          "some_text".translateString(context),
        ),
      ),
    );
  }
}
