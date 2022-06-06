import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Lottie.asset(
      'assets/images/loading.json',
      width: 150,
      height: 150,
    ));
  }
}
