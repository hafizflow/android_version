import 'package:flutter/material.dart';
import '../models/android_version.dart';

class AndroidVersionView extends StatelessWidget {
  final List<AndroidVersion> versions;

  const AndroidVersionView({super.key, required this.versions});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Android Versions'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: versions
            .map((version) => Text('${version.id}: ${version.title}'))
            .toList(),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}
