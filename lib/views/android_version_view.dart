import 'package:android_version/utiles/constant/colors.dart';
import 'package:flutter/material.dart';
import '../models/android_version.dart';

class AndroidVersionView extends StatelessWidget {
  final List<AndroidVersion> versions;
  final String versionNumber;

  const AndroidVersionView({
    super.key,
    required this.versions,
    required this.versionNumber,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.primaryBackground,
      title: Text('Android Version $versionNumber'),
      content: Wrap(
        spacing: 8.0,
        children: versions
            .map((version) =>
                Chip(label: Text('${version.id}: ${version.title}')))
            .toList(),
      ),
      actions: [
        OutlinedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            'Close',
            style: TextStyle(
              color: Colors.red[600],
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
