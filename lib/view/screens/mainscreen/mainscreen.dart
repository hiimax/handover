import '../../../res/import/import.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController? _pageController;
  int _currentIndex = 0;
  bool showSheet = false;

  final List<Widget> _pages = [
    // HomeScreen(),
    // SavedScreen(),
    // ChatScreen(),
    // ProfileScreen(),
  ];

  @override
  void initState() {
    _pageController = PageController(
      keepPage: true,
      initialPage: 0,
    );
    super.initState();
  }

  void onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
    showSheet = false;
    setState(() {});
    _pageController!.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future<bool>.value(false),
        child: Scaffold(
          body: PageView(
            onPageChanged: onPageChanged,
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            children: _pages,
          ),
          extendBody: true,
          bottomNavigationBar: StatefulBuilder(builder: (context, setState) {
            return Container(
              height: 60,
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: handoverWhite,
                selectedIconTheme: IconThemeData(color: handoverPrimaryColor),
                showSelectedLabels: true,
                selectedItemColor: handoverPrimaryColor,
                unselectedItemColor: handoverGrey,
                selectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                currentIndex: _currentIndex,
                onTap: onPageChanged,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_filled,
                      size: 20,
                      color: handoverGrey,
                    ),
                    label: 'Home',
                    activeIcon: Icon(
                      Icons.home_filled,
                      size: 20,
                      color: handoverPrimaryColor,
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.bookmark_outline_outlined,
                      size: 20,
                      color: handoverGrey,
                    ),
                    label: 'Saved',
                    activeIcon: Icon(
                      Icons.bookmark_outline_outlined,
                      size: 20,
                      color: handoverPrimaryColor,
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.chat_bubble_outline,
                      size: 20,
                      color: handoverGrey,
                    ),
                    label: 'Chat',
                    activeIcon: Icon(
                      Icons.chat_bubble_outline,
                      size: 20,
                      color: handoverPrimaryColor,
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_outline_outlined,
                      size: 20,
                      color: handoverGrey,
                    ),
                    label: 'Profile',
                    activeIcon: Icon(
                      Icons.person_outline_outlined,
                      size: 20,
                      color: handoverPrimaryColor,
                    ),
                  ),
                ],
              ),
            );
          }),
        ));
  }
}
