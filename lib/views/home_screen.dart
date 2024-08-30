import 'package:flutter/material.dart';
import '../controllers/android_version_controller.dart';
import 'android_version_view.dart';

class HomeScreen extends StatelessWidget {
  final AndroidVersionController _controller = AndroidVersionController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Android Versions')),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 16, bottom: 16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton.extended(
              onPressed: () {
                final versions =
                    _controller.parseJson(AndroidVersionController.input1);
                showDialog(
                  context: context,
                  builder: (context) => AndroidVersionView(
                    versions: versions,
                    versionNumber: '1',
                  ),
                );
              },
              label: const Text('Input Version 1'),
            ),
            const SizedBox(width: 16),
            FloatingActionButton.extended(
              onPressed: () {
                final versions =
                    _controller.parseJson(AndroidVersionController.input2);
                showDialog(
                  context: context,
                  builder: (context) => AndroidVersionView(
                    versions: versions,
                    versionNumber: '2',
                  ),
                );
              },
              label: const Text('Input Version 2'),
            ),
          ],
        ),
      ),
    );
  }
}
