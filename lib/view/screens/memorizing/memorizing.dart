import '../../../res/import/import.dart';

class MemorizingScreen extends StatelessWidget {
  const MemorizingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: ResponsiveScreen(
              mobile: MemorizingScreenMobile(),
            ),
          )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
        child: InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SuggestionScreen()));
            },
            child: Image.asset('assets/images/Groupe 66.png')),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class MemorizingScreenMobile extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  MemorizingScreenMobile({Key? key}) : super(key: key);
  final List<String> alphabetList = List.generate(26, (index) => String.fromCharCode('A'.codeUnitAt(0) + index));

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
                        'Memorizing words',
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
            Container(
              height: 55,
              child: ListView.builder(
                  itemCount: alphabetList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final letter = alphabetList[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5,),
                      child: Container(
                        height: 50,
                        width: 34,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          )
                        ),
                        child:  Center(
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
                      ),
                    );
                  }),
            ),
            YMargin(30),
            Padding(
              padding: const EdgeInsets.symmetric( horizontal: 20),
              child: Column(
                children: [
                  Container(
                    height: config.sh(149),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(239,150,49,0.43 ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 13,top: 15,right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Apple',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: config.sp(28),
                              fontFamily: 'Helvetica Neue',
                              color: Color.fromRGBO(4, 46, 46, 0.73),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          YMargin(5),
                          Text(
                            '1. I like to eat an apple every day for a healthy snack',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: config.sp(11),
                              fontFamily: 'Helvetica Neue',
                              color: Color.fromRGBO(4, 46, 46, 0.73),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          YMargin(15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/Groupe 67.png'),
                              Image.asset('assets/images/54529-removebg-previ.png'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  YMargin(20),
                  Row(
                    children: [
                      Text(
                        'Other suggestions',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: config.sp(15),
                          fontFamily: 'Helvetica Neue',
                          color: Color.fromRGBO(4, 46, 46, 0.73),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  YMargin(10),
                  WordsWidget(title: 'Aria',),
                  YMargin(10),
                  WordsWidget(title: 'Airplane',),
                  YMargin(10),
                  WordsWidget(title: 'Automobile',),
                  YMargin(10),
                  WordsWidget(title: 'Alarm clock',),
                  YMargin(10),
                  WordsWidget(title: 'Antenna',),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
class WordsWidget extends StatelessWidget {
  String title;
   WordsWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SizeConfig config = SizeConfig();
    return Container(
      height: config.sh(61),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: handoverPrimaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 13,top: 15,right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: config.sp(25),
                fontFamily: 'Helvetica Neue',
                color: Color.fromRGBO(4, 46, 46, 0.73),
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
