import '../../../res/import/import.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({Key? key}) : super(key: key);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
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
          currentIndex: currentIndex,
          onTap: (index) {
            if (index != null) {
              switch (index) {
                case 0:
                  if (currentIndex != 0) {

                    setState(() {
                      currentIndex = index;
                    });
                  } else {

                  }

                  break;
                case 1:
                  if (currentIndex != 1) {

                    setState(() {
                      currentIndex = index;
                    });
                  } else {
                    return;
                  }

                  break;
                case 2:
                  if (currentIndex != 2) {

                    setState(() {
                      currentIndex = index;
                    });
                  } else {
                    return;
                  }
                  break;
                case 3:
                  if (currentIndex != 3) {

                    setState(() {
                      currentIndex = index;
                    });
                  } else {
                    return;
                  }

                  break;
                default:
                  return;
              }
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                size: 20,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_outline_outlined,
                size: 20,
              ),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble_outline,
                  size: 20,
                ),
                label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline_outlined,
                  size: 20,
                ),
                label: 'Profile'),
          ],
        ),
      );
    });
  }
}
