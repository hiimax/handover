import '../../../res/import/import.dart';

class SignupScreen2 extends StatelessWidget {
  const SignupScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: ResponsiveScreen(
          mobile: SignupScreen2Mobile(),
        ),
      )),
    );
  }
}

class SignupScreen2Mobile extends StatelessWidget {
  SignupScreen2Mobile({Key? key}) : super(key: key);
  bool _termsandconditions = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: StatefulBuilder(builder: (context, setState) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
              Column(
                children: [
                  CustomTextFormField(
                    obscureText: false,
                    readonly: false,
                    textInputType: TextInputType.name,
                    hintText: 'First name',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 14, right: 5),
                      child: Image.asset('assets/images/user.png'),
                    ),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                ],
              ),
              Column(
                children: [
                  CustomTextFormField(
                    obscureText: false,
                    readonly: false,
                    textInputType: TextInputType.name,
                    hintText: 'Last name',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 14, right: 5),
                      child: Image.asset('assets/images/user.png'),
                    ),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                ],
              ),
              Column(
                children: [
                  CustomTextFormField(
                    obscureText: false,
                    readonly: false,
                    textInputType: TextInputType.emailAddress,
                    hintText: 'Email',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 14, right: 5),
                      child: Image.asset('assets/images/mail.png'),
                    ),
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  CustomTextFormField(
                    obscureText: false,
                    readonly: false,
                    textInputType: TextInputType.number,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Text('+234',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: handoverTextColor,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                ],
              ),
              Column(
                children: [
                  CustomTextFormField(
                    obscureText: false,
                    readonly: false,
                    textInputType: TextInputType.text,
                    hintText: 'Password',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 14, right: 5),
                      child: Image.asset('assets/images/lock.png'),
                    ),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                ],
              ),
              Column(
                children: [
                  CustomTextFormField(
                    obscureText: false,
                    readonly: false,
                    textInputType: TextInputType.text,
                    hintText: 'Confirm password',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 14, right: 5),
                      child: Image.asset('assets/images/user.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Theme(
                    child: Checkbox(
                        value: _termsandconditions,
                        checkColor: handoverWhite,
                        activeColor: handoverPrimaryColor,
                        onChanged: (val) {
                          setState(() {
                            _termsandconditions = val!;
                          });
                          print(_termsandconditions);
                        }),
                    data: ThemeData(
                      unselectedWidgetColor: handoverBlack,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('By signing up, you are agreeing to our ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: handoverTextColor,
                          )),
                      Row(
                        children: [
                          Text('Terms of service',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: handoverPrimaryColor,
                              )),
                          Text(' and ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: handoverTextColor,
                              )),
                          Text('Privacy policy ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: handoverPrimaryColor,
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 47,
              ),
              CustomButton(
                enabled: _termsandconditions == true ? true : false,
                title: 'Create account',
                onPressed: () async {
                  FocusScopeNode currentFocus = FocusScope.of(context);
                  if (!currentFocus.hasPrimaryFocus) {
                    currentFocus.unfocus();
                  }
                  if (_termsandconditions) {
                    final FormState? form = _formKey.currentState;

                    String? device_token =
                        await LocalStorage.getItem("device_token");
                    if (form!.validate()) {

                    }
                  }
                  // Navigator.push(
                  //     context,
                  //     PageTransition(
                  //         type: PageTransitionType.rightToLeft,
                  //         duration: Duration(seconds: 2),
                  //         child: VerifyEmailAddressScreen()));
                },
              ),
              SizedBox(
                height: 21,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 90,
                    child: Divider(color: Colors.black),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text('or',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: handoverTextColor,
                      )),
                  SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                    width: 90,
                    child: Divider(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 21,
              ),
              CustomButtonWithIcon(
                title: 'Continue with Google',
                icon: Image.asset('assets/images/goggleicon.png'),
                buttonColor: Colors.transparent,
                textColor: handoverBlack,
                onPressed: () {
                  FocusScopeNode currentFocus = FocusScope.of(context);
                  if (!currentFocus.hasPrimaryFocus) {
                    currentFocus.unfocus();
                  }
                },
              ),
              YMargin(42),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: handoverTextColor,
                      )),
                  XMargin(5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(seconds: 1),
                              child: LoginScreen()));
                    },
                    child: Text('Login',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: handoverPrimaryColor,
                        )),
                  ),
                ],
              ),
              YMargin(20),
            ],
          ),
        );
      }),
    );
  }
}
