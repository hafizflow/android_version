import 'package:android_version/utiles/constant/sizes.dart';
import 'package:flutter/material.dart';
import '../controllers/android_version_controller.dart';
import 'android_version_view.dart';

class HomeScreen extends StatelessWidget {
  final AndroidVersionController _controller = AndroidVersionController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Android Versions',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
          right: MediaQuery.sizeOf(context).width * .1,
          bottom: MediaQuery.sizeOf(context).height * .02,
        ),
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
              label: const Text(
                'Input Version 1',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(width: ASizes.spaceBtwItems),
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
              label: const Text(
                'Input Version 2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
