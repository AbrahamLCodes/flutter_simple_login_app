import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_login_app/custom_widgets/custom_image_widget.dart';
import 'package:animate_do/animate_do.dart';

class SplashPage extends StatelessWidget {
  final splashDuration = const Duration(seconds: 4);

  @override
  Widget build(BuildContext context) {
    Timer(splashDuration, () {
      Navigator.of(context).pushReplacementNamed('/login');
    });

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeIn(
              duration: const Duration(milliseconds: 2500),
              child: const CustomImageWidget(
                  imageProvider: AssetImage('assets/logo_iv1.png'), size: 300),
            ),
            FadeIn(
                duration: const Duration(milliseconds: 2500),
                child: const Text("Micromarket Monitor",
                    style: TextStyle(color: Colors.black, fontSize: 22))),
            const SizedBox(
              height: 10,
            ),
            FadeIn(
                duration: const Duration(milliseconds: 2500),
                child: const Text("R1",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)))
          ],
        ),
      ),
    );
  }
}
