import 'package:flutter/material.dart';
import '../controllers/android_version_controller.dart';
import 'android_version_screen.dart';

class HomeScreen extends StatelessWidget {
  final AndroidVersionController _controller = AndroidVersionController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Android Versions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                final versions =
                    _controller.parseJson(AndroidVersionController.input1);
                showDialog(
                  context: context,
                  builder: (context) => AndroidVersionView(versions: versions),
                );
              },
              child: const Text('Show Input 1 Versions'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final versions =
                    _controller.parseJson(AndroidVersionController.input2);
                showDialog(
                  context: context,
                  builder: (context) => AndroidVersionView(versions: versions),
                );
              },
              child: const Text('Show Input 2 Versions'),
            ),
          ],
        ),
      ),
    );
  }
}
