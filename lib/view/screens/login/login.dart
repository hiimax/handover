import '../../../res/import/import.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ResponsiveScreen(
            mobile: LoginScreenMobile(),
          )),
    );
  }
}

class LoginScreenMobile extends StatefulWidget {
  LoginScreenMobile({Key? key}) : super(key: key);

  @override
  State<LoginScreenMobile> createState() => _LoginScreenMobileState();
}

class _LoginScreenMobileState extends State<LoginScreenMobile> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool switcher=false;
  @override
  Widget build(BuildContext context) {
    final SizeConfig config =SizeConfig();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Row(
              children: [
                AppBarNavigation(

                ),
              ],
            ),
            SizedBox(
              height: 34,
            ),
            Text(
              'Sign in your account',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: config.sp(30),
                fontFamily: 'Helvetica Neue',
                color: Color.fromRGBO(4, 46, 46,0.73),
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Do you already have an account? ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: config.sp(13),
                    fontFamily: 'Helvetica Neue',
                    color: Color.fromRGBO(28, 123, 123,0.9),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  ' Sign Up Now',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: config.sp(13),
                    fontFamily: 'Helvetica Neue',
                    color: Color.fromRGBO(28, 123, 123,0.9),
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
              label: 'E -mail',
            ),
            YMargin(20),
            CustomTextFormField(
              obscureText: false,
              readonly: false,
              textInputType: TextInputType.number,
              label: 'Password',
            ),
            YMargin(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 44,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: switcher ? handoverPrimaryColor : Colors.grey,
                      ),
                      child: StatefulBuilder(builder: (context, setState) {
                        return Switch(
                          onChanged: (value) {
                            setState(() {
                              switcher = value;
                            });
                            setState(() {});
                          },
                          value: switcher,
                          activeColor: Colors.white,
                          activeTrackColor: handoverPrimaryColor,
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                        );
                      }),
                    ),
                    XMargin(10),
                    Text(
                      'Remember me',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: config.sp(15),
                        fontFamily: 'Helvetica Neue',
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Forgot password?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: config.sp(15),
                    fontFamily: 'Helvetica Neue',
                    color: Color.fromRGBO(28,123,123,0.9 ),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 47,
            ),
            CustomButton(
              title: 'Sign In',
              onPressed: () {
                // FocusScopeNode currentFocus = FocusScope.of(context);
                // if (!currentFocus.hasPrimaryFocus) {
                //   currentFocus.unfocus();
                // }
                // final FormState? form = _formKey.currentState;
                // if (form!.validate()) {
                //   // authenticate.SendOtp(context);
                // }
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  ChooseABookScreen()));
              },
            ),
            YMargin(
              21,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 90,
                  child: Divider(color: Colors.black),
                ),
                XMargin(
                  25,
                ),
                Text('Or Connect With',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: handoverTextColor,
                    )),
                XMargin(
                  25,
                ),
                SizedBox(
                  width: 90,
                  child: Divider(color: Colors.black),
                ),
              ],
            ),
            YMargin(
              30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/Popular-Logo-faceboo.png'),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/Ellipse 8.png')),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Image.asset('assets/images/3-38783_blue-twitter.png')),
                  ),
                ),
                Image.asset('assets/images/61-617291_newsletter.png'),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/Ellipse 8.png')),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Image.asset('assets/images/G.png')),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
