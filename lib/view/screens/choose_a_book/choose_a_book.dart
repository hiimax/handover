import '../../../res/import/import.dart';

class ChooseABookScreen extends StatelessWidget {
  const ChooseABookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ResponsiveScreen(
        mobile: ChooseABookScreenMobile(),
      )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
        child: CustomButton(
          title: 'Next',
          buttonColor: Color.fromRGBO(28, 123, 123, 0.9),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class ChooseABookScreenMobile extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ChooseABookScreenMobile({Key? key}) : super(key: key);
  bool switcher = false;

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
                    children: [
                      AppBarNavigation(),
                    ],
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Text(
                    'Choose the Book',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: config.sp(30),
                      fontFamily: 'Helvetica Neue',
                      color: Color.fromRGBO(4, 46, 46, 0.73),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  YMargin(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Choose the language you will use for learning',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: config.sp(18),
                          fontFamily: 'Helvetica Neue',
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
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
                      child: Icon(Icons.search),
                    ),
                    hintText: 'Choose book...',
                  ),
                  YMargin(30),
                ],
              ),
            ),

            Flexible(
                child: Container(
              color: Color.fromRGBO(28, 123, 123, 0.9).withOpacity(0.2),
              child: ListView.builder(
                  itemCount: 4,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,),
                      child: BookWidgets(
                        subtitle:BookWidgetstabs[index].subtitle,
                        image: BookWidgetstabs[index].image,
                        title: BookWidgetstabs[index].title,
                      ),
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }
}

class BookWidgets extends StatefulWidget {
  String title;
  String image;
  String subtitle;

  BookWidgets({
    Key? key,
    required this.subtitle,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  State<BookWidgets> createState() => _BookWidgetsState();
}

class _BookWidgetsState extends State<BookWidgets> {
  int selectedRating = 0;

  void rate(int rating) {
    setState(() {
      selectedRating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    final SizeConfig config = SizeConfig();
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/${widget.image}'),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: config.sp(10),
                        fontFamily: 'Helvetica Neue',
                        color: handoverPrimaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    YMargin(10),
                    Text(
                      widget.subtitle,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: config.sp(9),
                        fontFamily: 'Helvetica Neue',
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.bookmark_outline_outlined),
                  YMargin(30),
                  Row(
                    children: [
                      buildStar(1),
                      buildStar(2),
                      buildStar(3),
                      buildStar(4),
                      buildStar(5),
                    ],
                  ),
                ],
              ),
            ],
          ),
          YMargin(20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Divider(
              color: Color.fromRGBO(28, 123, 123, 0.9),
              thickness: 3,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStar(int rating) {
    return SizedBox(
      width: 14,
      height: 14,
      child: IconButton(
        icon: Icon(
          rating <= selectedRating ? Icons.star : Icons.star_border,
          color: Colors.yellow,
          size: 13.0,
        ),
        onPressed: () {
          rate(rating);
        },
      ),
    );
  }
}

class BookWidgetsModel {
  final String title;
  final String subtitle;
  final String image;


  BookWidgetsModel(
      this.title,
      this.subtitle,
      this.image,
      );
}

List<BookWidgetsModel> BookWidgetstabs = [
  BookWidgetsModel(
    'HOW TO GET REALLY GOOD AT ENGLISH',
    'How to Get Really Good at English:\nLearn English to Fluency and Beyond\nPublisher, ‎Language Mastery Publishing;\nIllustrated edition (January 22, 2019)',
    '718o5QeYqFL.png',
  ),
  BookWidgetsModel(
    'ENGLISH CONVERSATION MADE NATURAL',
    'With our book English Conversation Made Natural,\nyou can immerse yourself in real conversations\nthat tell an authentic story through\na variety of dialogues.',
    '1950321398.01.S001.L.png',
  ),
  BookWidgetsModel(
    'HOW TO GET REALLY GOOD AT ENGLISH',
    'Teachers are obsessed with telling you what to learn.\nThe problem is, nobody teaches you how to learn.\nThis is all about to change. In his new book, ...',
    'images (2).png',
  ),
  BookWidgetsModel(
    'PRACTICAL EVERYDAY ENGLISH',
    'Self-study book that focuses on advanced vocabulary,\nphrasal verbs and idioms.',
    'Practical-Everyday-E.png',
  ),
];