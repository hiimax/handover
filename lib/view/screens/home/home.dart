import '../../../res/import/import.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(

            child: ResponsiveScreen(
              mobile: HomeScreenMobile(),
            ),
          )),
    );
  }
}

class HomeScreenMobile extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  HomeScreenMobile({Key? key}) : super(key: key);
  bool switcher = false;
  DateTime? _selectedDate;
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
                        'Home',
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
                  YMargin(15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     CircleAvatar(
                         backgroundImage: AssetImage('assets/images/287927771_2624047060.png'),
                       backgroundColor: Colors.grey,
                       radius: 35,
                     ),
                      XMargin(5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Amine!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: config.sp(20),
                              fontFamily: 'Helvetica Neue',
                              color: Color.fromRGBO(4, 46, 46, 0.73),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          YMargin(5),
                          Text(
                            'Welcome back ,your are doing great !',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: config.sp(15),
                              fontFamily: 'Helvetica Neue',
                              color: Color.fromRGBO(0,0,0,0.52 ),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          YMargin(5),
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: SizedBox(
                              width: config.sw(263),
                              child: Divider(

                                color: Color.fromRGBO(28, 123, 123, 0.9),
                                thickness: 3,
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  TableCalendar(
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: DateTime.now(),
                    calendarFormat: CalendarFormat.week,
                    availableCalendarFormats: {
                      CalendarFormat.week: 'Week',
                    },
                  ),
                  YMargin(20),
                  Container(
                    height: 120,
                    child: ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              height: config.sh(119),
                              width: MediaQuery.of(context).size.width-100,
                              decoration: BoxDecoration(
                                color: handoverPrimaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Words learnt\n1000 +',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: config.sp(20),
                                            fontFamily: 'Helvetica Neue',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        YMargin(20),
                                        SizedBox(
                                          width: config.sw(143),
                                          height: config.sh(30),
                                          child: CustomButton(
                                            title: 'open',
                                            textColor: Colors.white,
                                            textSize: 12,
                                            buttonColor: Color.fromRGBO(55,246,246,0.49 ),
                                            onPressed: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(builder: (context) => CardScreen()));
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                     Icon(Icons.more_vert, color: Colors.white,),
                                      YMargin(20),
                                      Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        child:  Center(
                                          child: Container(
                                            width: 45.0,
                                            height: 45.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: handoverPrimaryColor,
                                            ),
                                            child: Center(
                                              child: Container(
                                                width: 40.0,
                                                height: 40.0,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white,
                                                ),
                                                child: Center(
                                                  child:  Text(
                                                    '57%',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: config.sp(12),
                                                      fontFamily: 'Helvetica Neue',
                                                      color: Color.fromRGBO(28,123,123,0.9 ),
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          ),
                                        ),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                    }),
                  ),
                  YMargin(20),
                  ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'See All',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: config.sp(15),
                                      fontFamily: 'Helvetica Neue',
                                      color: handoverPrimaryColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              YMargin(10),
                              Container(
                                height: config.sh(119),
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: HomeWidgetsModeltabs[index].concolor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15,left: 20),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                          HomeWidgetsModeltabs[index].title,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: config.sp(20),
                                              fontFamily: 'Helvetica Neue',
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          YMargin(10),
                                         Row(
                                           children: [
                                             Container(
                                               decoration: BoxDecoration(
                                                 color: HomeWidgetsModeltabs[index].boxcolor,
                                                 borderRadius: BorderRadius.circular(2)
                                               ),
                                               child: Padding(
                                                 padding: const EdgeInsets.all(8.0),
                                                 child: Center(
                                                   child: Text(
                                                     'Easy',
                                                     textAlign: TextAlign.left,
                                                     style: TextStyle(
                                                       fontSize: config.sp(8),
                                                       fontFamily: 'Helvetica Neue',
                                                       color: Colors.white,
                                                       fontWeight: FontWeight.w700,
                                                     ),
                                                   ),
                                                 ),
                                               ),
                                             ),
                                             XMargin(10),
                                             Container(
                                               decoration: BoxDecoration(
                                                 color: HomeWidgetsModeltabs[index].boxcolor,
                                                 borderRadius: BorderRadius.circular(2)
                                               ),
                                               child: Padding(
                                                 padding: const EdgeInsets.all(8.0),
                                                 child: Center(
                                                   child: Text(
                                                     'Hard',
                                                     textAlign: TextAlign.left,
                                                     style: TextStyle(
                                                       fontSize: config.sp(8),
                                                       fontFamily: 'Helvetica Neue',
                                                       color: Colors.white,
                                                       fontWeight: FontWeight.w700,
                                                     ),
                                                   ),
                                                 ),
                                               ),
                                             ),
                                             XMargin(10),
                                             Container(
                                               decoration: BoxDecoration(
                                                 color: HomeWidgetsModeltabs[index].boxcolor,
                                                 borderRadius: BorderRadius.circular(2)
                                               ),
                                               child: Padding(
                                                 padding: const EdgeInsets.all(8.0),
                                                 child: Center(
                                                   child: Text(
                                                     'Unknown',
                                                     textAlign: TextAlign.left,
                                                     style: TextStyle(
                                                       fontSize: config.sp(8),
                                                       fontFamily: 'Helvetica Neue',
                                                       color: Colors.white,
                                                       fontWeight: FontWeight.w700,
                                                     ),
                                                   ),
                                                 ),
                                               ),
                                             ),
                                           ],
                                         )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class HomeWidgetsModel {
  final String title;
  final Color concolor;
  final Color boxcolor;


  HomeWidgetsModel(
      this.title,
      this.concolor,
      this.boxcolor,
      );
}

List<HomeWidgetsModel> HomeWidgetsModeltabs = [
  HomeWidgetsModel(
    'Memorizing words',
    Color.fromRGBO(239,150,49,0.43 ).withOpacity(0.2),
    Color.fromRGBO(239,150,49,0.43 ),
  ),
  HomeWidgetsModel(
    'Recommended wordsL',
    Color.fromRGBO(28,123,123,0.1 ).withOpacity(0.2),
    Color.fromRGBO(28,123,123,0.1 ),
  ),
  HomeWidgetsModel(
    'Recommended words',
    Color.fromRGBO(223,71,23,0.57 ).withOpacity(0.2),
    Color.fromRGBO(223,71,23,0.57 ),
  ),
];