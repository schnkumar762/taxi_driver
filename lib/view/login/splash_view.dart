import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taxi_driver/common/color_extension.dart';
import 'package:taxi_driver/view/login/change_language_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    //not need status bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    super.initState();
  }

  void load() async {
    await Future.delayed(const Duration(seconds: 3));
    loadNextScreen();
  }

  void loadNextScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChangeLanguageView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.bg,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: context.width,
            height: context.height,
            color: TColor.primary,
          ),
          Image.asset("assets/img/logo.png", width: context.width * 0.25),
        ],
      ),
    );
  }
}
