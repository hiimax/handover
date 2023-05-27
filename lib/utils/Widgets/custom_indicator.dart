import '../../res/import/import.dart';

class AppBarNavigation extends StatelessWidget {
  Color? color;
  AppBarNavigation(
      {Key? key, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset('assets/images/Groupe 13.png')),
              ],
            ),
          ],
        )),
      ),
    );
  }
}

class AppBarNavigation1 extends StatelessWidget {
  String title;
  String subtitle;
  Color? color;
  AppBarNavigation1(
      {Key? key, required this.title, required this.subtitle, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: handoverAppNavigationTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: color ?? handoverTextColor,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class AppBarNavigationWithoutPop extends StatelessWidget {
  String title;
  Widget? widget;
  AppBarNavigationWithoutPop({Key? key, required this.title, this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: handoverAppNavigationTextColor,
              ),
            ),
            widget ?? SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
