import '../../../res/import/import.dart';

class ListeningScreen extends StatelessWidget {
  const ListeningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: ResponsiveScreen(
          mobile: ListeningScreenMobile(),
        ),
      )),
    );
  }
}

class ListeningScreenMobile extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ListeningScreenMobile({Key? key}) : super(key: key);
  final CardSwiperController controller = CardSwiperController();
  double progressValue = 2.0;

  @override
  Widget build(BuildContext context) {
    final SizeConfig config = SizeConfig();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      AppBarNavigation(),
                      XMargin(80),
                      Text(
                        'Listening',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: config.sp(30),
                          fontFamily: 'Helvetica Neue',
                          color: Color.fromRGBO(4, 46, 46, 0.73),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  YMargin(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Progress:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: config.sp(15),
                          fontFamily: 'Helvetica Neue',
                          color: handoverBlack,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '15%',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: config.sp(15),
                          fontFamily: 'Helvetica Neue',
                          color: handoverBlack,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  YMargin(2),
                  Container(
                    height: 15,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: 10,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: handoverPrimaryColor.withOpacity(0.3),
                          ),
                        ),
                        Container(
                          height: 12,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: handoverPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  YMargin(30),
                  Text(
                    'Write the phrase you\'ll hear in the audio files',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: config.sp(30),
                      fontFamily: 'Helvetica Neue',
                      color: Color.fromRGBO(4, 46, 46, 0.73),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  YMargin(30),
                  Container(
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: handoverPrimaryColor.withOpacity(0.1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Rectangle 53.png'))),
                                child: Center(
                                    child: Icon(
                                  Icons.play_arrow,
                                  color: handoverWhite,
                                  size: 40,
                                )),
                              ),
                              XMargin(10),
                              Row(
                                children: [
                                  Image.asset(
                                      'assets/images/124-1244863_ppc-web-services-recording-sound-wave-icon-hd-removebg-preview.png'),
                                  Image.asset(
                                      'assets/images/124-1244863_ppc-web-services-recording-sound-wave-icon-hd-removebg-preview.png'),
                                  Image.asset(
                                      'assets/images/124-1244863_ppc-web-services-recording-sound-wave-icon-hd-removebg-preview.png'),
                                  Image.asset(
                                      'assets/images/124-1244863_ppc-web-services-recording-sound-wave-icon-hd-removebg-preview.png'),
                                  Image.asset(
                                      'assets/images/124-1244863_ppc-web-services-recording-sound-wave-icon-hd-removebg-preview.png'),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            '00:09',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: config.sp(11),
                              fontFamily: 'Helvetica Neue',
                              color: Color.fromRGBO(4, 46, 46, 0.73),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  YMargin(30),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/6100_1_08.png'),
                          XMargin(25),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Prpmpt!',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: config.sp(20),
                                  fontFamily: 'Helvetica Neue',
                                  color: handoverPrimaryColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              YMargin(25),
                              Text(
                                'There are 5 words in\nthe phrase',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: config.sp(11),
                                  fontFamily: 'Helvetica Neue',
                                  color: handoverPrimaryColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 32,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/Rectangle 54.png'))),
                        child: Center(
                          child: Image.asset(
                              'assets/images/54529-removebg-previ.png'),
                        ),
                      ),
                    ],
                  ),
                  YMargin(30),
                  CustomTextFormField(
                    obscureText: false,
                    readonly: false,
                    hintText: 'Write your answer',
                    fillColor: Color.fromRGBO(239,150,49,0.43 ).withOpacity(0.2),
                    borderColor: Color.fromRGBO(239,150,49,0.43 ).withOpacity(0.2),
                    maxLines: 10,


                  ),
                  YMargin(30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomButton(
                      title: 'Check',
                      textColor: Colors.white,
                      buttonColor: handoverPrimaryColor,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MemorizingScreen()));
                      },
                    ),
                  ),
                  YMargin(20),
                  Text(
                    'I don\'t know',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: config.sp(18),
                      fontFamily: 'Helvetica Neue',
                      color: handoverPrimaryColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top',
    );
    return true;
  }

  bool _onUndo(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $currentIndex was undod from the ${direction.name}',
    );
    return true;
  }
}
