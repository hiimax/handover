import '../../../res/import/import.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: ResponsiveScreen(
          mobile: ForgotPasswordMobile(),
        ),
      )),
    );
  }
}

class ForgotPasswordMobile extends StatelessWidget {
  ForgotPasswordMobile({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _resetemailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
            CustomTextFormField(
              obscureText: false,
              readonly: false,
              textInputType: TextInputType.emailAddress,
              label: 'Email',
              controller: _resetemailController,
              hintText: 'Email',
              // validator: (str) => validateEmail(str),
            ),
            SizedBox(
              height: 47,
            ),
            CustomButton(
              title: 'Reset password',
              onPressed: () {
                FocusScopeNode currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
                final FormState? form = _formKey.currentState;
                if (form!.validate()) {

                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

