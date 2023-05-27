import 'package:flutter/material.dart';

import '../../../data/local/local_storage.dart';
import '../../../res/dimensions/dimensions.dart';
import '../../../res/spacer/spacer.dart';
import '../signup/signup1.dart';
import 'onBoarding1.dart';



class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    Future.delayed(Duration.zero).then((value) async => {
      await LocalStorage.setItem('onboarding', true)
    });
  }

  @override
  Widget build(BuildContext context) {
    final SizeConfig config =SizeConfig();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              OnboardingScreen1(),
              OnboardingScreen2(),
              OnboardingScreen3()
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:300.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      tabs[_currentPage].title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: config.sp(36),
                        fontFamily: 'Helvetica Neue',
                        color: Color.fromRGBO(4, 46, 46, 0.73),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                YMargin(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      tabs[_currentPage].subtitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: config.sp(18),
                        fontFamily: 'Helvetica Neue',
                        color: Color.fromRGBO(0, 0, 0, 0.52),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                YMargin(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return Container(
                      width: 30,
                      height: 9,
                      margin: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        color: _currentPage == index
                            ? Color.fromRGBO(245, 21, 89, 0.73)
                            : Colors.white,
                      ),
                    );
                  }),
                ),
                YMargin(30),
                if(_currentPage ==2)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'If you have an account. ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: config.sp(15),
                        fontFamily: 'Helvetica Neue',
                        color: Color.fromRGBO(4, 46, 46,0.73),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Sign In',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: config.sp(18),
                        fontFamily: 'Helvetica Neue',
                        color: Color.fromRGBO(4, 46, 46,0.73),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Align(
              alignment: FractionalOffset.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    child: Text(_currentPage !=2 ? 'Skip' : 'Get Started',
                        style: TextStyle(
                            fontSize: 16,
                          color: Color.fromRGBO(4, 46, 46, 0.73),

                        )),

                    onPressed: () {
                      if(_currentPage != 2){
                        _currentPage=2;
                        _pageController.jumpToPage(3);
                        setState(() {

                        });
                      }else{
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  SignupScreen1()));
                      }

                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class OnboardingModel {
  final String title;
  final String subtitle;


  OnboardingModel(
      this.title,
      this.subtitle,
      );
}

List<OnboardingModel> tabs = [
  OnboardingModel(
    'Learn English with us',
    'You can always keep your personal\ndictionary close at hand',
  ),
  OnboardingModel(
    'Share the module and\ncompete with your friends',
    'You can always keep your personal\ndictionary close at hand',
  ),
  OnboardingModel(
    'Welcome to Moly!',
    'Take a deep breath and start your\nlearning path',
  ),
];
