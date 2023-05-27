// import 'dart:async';
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:provider/provider_setup.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import 'package:zinari/Widgets/custom_button.dart';
//
// import '../Helpers/theme/zinari.dart';
// import '../Provider/themeStyle.dart';
//
// class CustomWebViewPage extends StatefulWidget {
//   final String url;
//   final String title;
//
//   CustomWebViewPage(this.url, this.title);
//
//   @override
//   CustomWebViewPageState createState() => CustomWebViewPageState(this.url, this.title);
// }
//
// class CustomWebViewPageState extends State<CustomWebViewPage> {
//   final String url;
//   final String title;
//   bool isLoading = true;
//   CustomWebViewPageState(this.url, this.title);
//
//   @override
//   void initState() {
//     super.initState();
//     // Enable hybrid composition.
//     if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<DarkThemeProvider>(
//
//         builder: (context,theme,_) {
//         return Scaffold(
//             backgroundColor:  theme.darkTheme ? Zinarihelper.zeenahdarkbackgroundcolor : Zinarihelper.zeenahwhite,
//
//             appBar: AppBar(
//               title: Text(this.title),
//               backgroundColor: Zinarihelper.zeenahlightPrimary,
//               titleTextStyle: TextStyle(  color:  Zinarihelper.zeenahwhite, fontFamily: "Helvetica Neue",
//                   fontWeight: FontWeight.bold,
//                   fontSize: 17.0),
//             ),
//             body: Stack(children: [
//
//               WebView(
//
//                 initialUrl: this.url,
//                 javascriptMode: JavascriptMode.unrestricted,
//                 onPageFinished: (finish) {
//                   setState(() {
//                     isLoading = false;
//                   });
//                 },
//               ),
//               isLoading
//                   ? Center(
//                 child: CircularProgressIndicator( color: Zinarihelper.zeenahlightPrimary,),
//               )
//                   : SizedBox(),
//             ]));
//       }
//     );
//   }
// }
