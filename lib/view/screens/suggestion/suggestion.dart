import '../../../res/import/import.dart';

class SuggestionScreen extends StatelessWidget {
  const SuggestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: ResponsiveScreen(
              mobile: SuggestionScreenMobile(),
            ),
          )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
        child: InkWell(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CardScreen()));
          },
            child: Image.asset('assets/images/Groupe 66.png')),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class SuggestionScreenMobile extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SuggestionScreenMobile({Key? key}) : super(key: key);
  final List<String> alphabetList = [
    'Definition',
    'Synonym',
    'Homonym',
    'Antonym',
  ];

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
              padding: const EdgeInsets.symmetric( horizontal: 20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      AppBarNavigation(),
                      XMargin(80),
                      Text(
                        'Suggestion',
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

                  YMargin(20),
                  CustomTextFormField(
                    obscureText: false,
                    readonly: false,
                    textInputType: TextInputType.number,
                    fillColor: Color.fromRGBO(28, 123, 123, 0.9).withOpacity(0.2),
                    borderColor: Color.fromRGBO(28, 123, 123, 0.9),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(Icons.search,color: handoverBlack,),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset('assets/images/Groupe 40.png'),
                    ),
                    hintText: 'plants',
                  ),
                  YMargin(30),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric( horizontal: 20),
              child: Container(
                height: config.sh(119),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xff2E5B72),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13,top: 15,right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Plant',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: config.sp(28),
                              fontFamily: 'Helvetica Neue',
                              color: handoverWhite,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            height: 32,
                            width: 38,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/Rectangle 45.png'))
                            ),
                            child: Center(
                              child:  Image.asset('assets/images/124-1244863_ppc-web-services-recording-sound-wave-icon-hd-removebg-preview.png'),
                            ),
                          ),
                        ],
                      ),

                      YMargin(40),
                      Row(
                        children: [
                          Text(
                            'Show IPA',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: config.sp(18),
                              fontFamily: 'Helvetica Neue',
                              color: handoverWhite,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          XMargin(30),
                          Text(
                            '[ p l aw n t ]',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: config.sp(10),
                              fontFamily: 'Helvetica Neue',
                              color: handoverWhite,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          XMargin(30),
                          Text(
                            '/plɑːnt/',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: config.sp(10),
                              fontFamily: 'Helvetica Neue',
                              color: handoverWhite,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            YMargin(30),
            Container(
              height: 20,
              child: ListView.builder(
                  itemCount: alphabetList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final letter = alphabetList[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,),
                      child: Center(
                        child: Text(
                          letter,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: config.sp(20),
                            fontFamily: 'Helvetica Neue',
                            color: Color.fromRGBO(4, 46, 46, 0.73),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            YMargin(30),
            Padding(
              padding: const EdgeInsets.symmetric( horizontal: 20),
              child: Container(
                height: config.sh(207),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: handoverMainColor.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13,top: 15,right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Noun',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: config.sp(15),
                          fontFamily: 'Helvetica Neue',
                          color: handoverBlack,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      YMargin(20),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: config.sp(12),
                        fontFamily: 'Helvetica Neue',
                        color: handoverBlack,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(text: '1. a place where an industrial or manufacturing process takes place .'),
                        TextSpan(
                          text: '" a giant car plant"',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: handoverLightMainColor,
                          ),
                        ),
                      ],
                    )),
                      YMargin(20),
                      RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: config.sp(12),
                              fontFamily: 'Helvetica Neue',
                              color: handoverBlack,
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              TextSpan(
                                  text:
                                  '2. a living organism of the kind exemplified by trees, shrubs, herbs, grasses, ferns, and mosses, typically growing in a permanent site, absorbing water and inorganic substances through its roots, and synthesizing nutrients in its leaves by photosynthesis using the green pigment chlorophyll.',
                              ),

                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
            YMargin(30),
            Padding(
              padding: const EdgeInsets.symmetric( horizontal: 20),
              child: Container(
                height: config.sh(207),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: handoverMainColor.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13,top:10,right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Semantically Related Recommendations',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: config.sp(15),
                              fontFamily: 'Helvetica Neue',
                              color: handoverPrimaryColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Synonymes :',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: config.sp(15),
                          fontFamily: 'Helvetica Neue',
                          color: handoverPrimaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      YMargin(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GridScreen('factory'),
                          GridScreen('workshop'),
                          GridScreen('industrial unit'),
                          GridScreen('industrial unit'),
                          GridScreen('industrial unit'),

                        ],
                      ),
                      YMargin(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GridScreen('factory'),
                          GridScreen('workshop'),
                          GridScreen('industrial unit'),
                          GridScreen('industrial unit'),
                          GridScreen('industrial unit'),

                        ],
                      ),
                      YMargin(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GridScreen('factory'),
                          GridScreen('workshop'),
                          GridScreen('industrial unit'),
                          GridScreen('industrial unit'),
                          GridScreen('industrial unit'),

                        ],
                      ),
                      YMargin(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'See more',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: config.sp(15),
                              fontFamily: 'Helvetica Neue',
                              color: handoverPrimaryColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            YMargin(30),
            Padding(
              padding: const EdgeInsets.symmetric( horizontal: 20),
              child: Container(
                height: config.sh(207),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: handoverMainColor.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13,top:10,right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Visually Similar Recommendations:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: config.sp(15),
                              fontFamily: 'Helvetica Neue',
                              color: handoverPrimaryColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Homonym :',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: config.sp(15),
                          fontFamily: 'Helvetica Neue',
                          color: handoverPrimaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      YMargin(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GridScreen('factory'),
                          GridScreen('workshop'),
                          GridScreen('industrial unit'),
                          GridScreen('industrial unit'),
                          GridScreen('industrial unit'),

                        ],
                      ),
                      YMargin(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GridScreen('factory'),
                          GridScreen('workshop'),
                          GridScreen('industrial unit'),
                          GridScreen('industrial unit'),
                          GridScreen('industrial unit'),

                        ],
                      ),
                      YMargin(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'See more',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: config.sp(15),
                              fontFamily: 'Helvetica Neue',
                              color: handoverPrimaryColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
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
    );
  }
}

Widget GridScreen(String title) {
  final SizeConfig config = SizeConfig();
  return Container(
    height: config.sh(25),
    decoration: BoxDecoration(
      color: handoverPrimaryColor.withOpacity(0.2),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: config.sp(10),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}