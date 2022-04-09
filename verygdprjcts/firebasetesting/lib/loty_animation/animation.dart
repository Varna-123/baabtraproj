import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationPage extends StatelessWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Lottie.asset('assets/animations/101381-orange-t-shirt-coder.json'),
        // child: Lottie.network(
        //     'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
      ),
    );
  }
}
