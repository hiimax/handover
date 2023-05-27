import '../../../res/import/import.dart';

class CardScreen2 extends StatelessWidget {
  const CardScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: ResponsiveScreen(
          mobile: CardScreen2Mobile(),
        ),
      )),
    );
  }
}

class CardScreen2Mobile extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  CardScreen2Mobile({Key? key}) : super(key: key);
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
                        'Cards',
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
                  Container(
                    height: 450,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          top: 20,
                          child: Container(
                            height: 400,
                            width: MediaQuery.of(context).size.width - 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: handoverPrimaryColor,
                                  width: 3,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Plant',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: config.sp(20),
                                      fontFamily: 'Helvetica Neue',
                                      color: handoverPrimaryColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    '[ p l aw n t ]',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: config.sp(10),
                                      fontFamily: 'Helvetica Neue',
                                      color: Colors.red,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  YMargin(10),
                                  Text(
                                    'something that grows in the earth A plant is a living thing that grows in earth and has a stem, leaves, and roots. Water each plant as often as required.',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: config.sp(12),
                                      fontFamily: 'Helvetica Neue',
                                      color: handoverPrimaryColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  YMargin(30),
                                  Text(
                                    'Example',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: config.sp(20),
                                      fontFamily: 'Helvetica Neue',
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'I\'m going to plant some flowers in my garden this weekend.',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: config.sp(12),
                                      fontFamily: 'Helvetica Neue',
                                      color: handoverPrimaryColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  YMargin(10),
                                  Text(
                                    'We need to water the plant regularly so that it stays healthy and vibrant.',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: config.sp(12),
                                      fontFamily: 'Helvetica Neue',
                                      color: handoverPrimaryColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  YMargin(30),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Image.asset(
                                          'assets/images/images__1_-removebg-preview.png',scale: 2),
                                      Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.transparent,
                                            border: Border.all(
                                              color: handoverPrimaryColor,
                                              width: 3,
                                            )),
                                        child: Center(
                                          child: Icon(
                                            Icons.volume_mute_rounded,
                                            color: Colors.grey,
                                            size: 30,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  YMargin(30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomButton(
                      title: 'Flip',
                      textColor: Colors.white,
                      buttonColor: handoverPrimaryColor,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListeningScreen()));
                      },
                    ),
                  ),
                  YMargin(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Easy',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: config.sp(18),
                              fontFamily: 'Helvetica Neue',
                              color: Colors.green,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            width: 100.0,
                            height: 10.0,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                )),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Hard',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: config.sp(18),
                              fontFamily: 'Helvetica Neue',
                              color: Color(0xFFE27211),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            width: 100.0,
                            height: 10.0,
                            decoration: BoxDecoration(
                                color: Color(0xFFE27211),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                )),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Unknown',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: config.sp(18),
                              fontFamily: 'Helvetica Neue',
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            width: 100.0,
                            height: 10.0,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                )),
                          )
                        ],
                      ),
                    ],
                  )
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
