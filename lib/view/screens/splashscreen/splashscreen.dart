import 'package:flutter/cupertino.dart';
import '../../../res/import/import.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () async {
      bool value = await LocalStorage.getItem('onboarding') ?? false;
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>  OnboardingScreen()));

      // SharedPreferences preferences = await SharedPreferences.getInstance();
      //
      // await preferences.setInt('initScreen', 1);

      //if already shown -> 1 else 0
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: handoverPrimaryColor,
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FadeInTranslate(
                direction: FadeInDirection.left,
                duration: Duration(seconds: 3),
                child: Image.asset(
                  'assets/images/ecoKrib 1.png',
                  // color: handoverMainColor,
                ),
              ),
              FadeInTranslate(
                direction: FadeInDirection.right,
                duration: Duration(seconds: 3),
                child: Image.asset(
                  'assets/images/ecoKrib.png',
                  // color: handoverMainColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
