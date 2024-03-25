import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../Constants/image_constant.dart';
import '../../core/global/theme/DarkTheme/theme_helper.dart';
import 'OnBoarding.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> OnBoarding()))
      ;});
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays:SystemUiOverlay.values);                /////
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(1, 0.02),
              end: Alignment(0, 1.03),
              colors: [
                appTheme.gray600,
                appTheme.gray800,
              ],
            ),
          ),
        width: double.infinity,
        height: double.infinity,
        child:Image.asset(ImageConstant.imgEdulogo,width: 100,height: 100,)
        ),
    ) ;

  }
}
