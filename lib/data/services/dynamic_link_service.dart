//
//
// import '../../res/import/import.dart';
//
// class DynamicLinkService extends ChangeNotifier{
//   // DynamicLinkService._();
//   var refLink;
//    Future<void> handleDynamicLinks(context) async {
//     // 1. Get the initial dynamic link if the app is opened with a dynamic link
//      PendingDynamicLinkData? data = await FirebaseDynamicLinks.instance.getInitialLink();
//     print('_handleDeepLink | deeplink: $data');
//     // 2. handle link that has been retrieved
//      if(data ==null){
//        SharedPreferences preferences = await SharedPreferences.getInstance();
//        int? initScreen =  await preferences.getInt('initScreen');
//        Navigator.pushReplacement(
//            context, MaterialPageRoute(builder: (context) => initScreen == 0 || initScreen == null? SelecteLanguage() : Login()));
//      }
//
//     // 3. Register a link callback to fire if the app is opened up from the background
//     // using a dynamic link.
//     FirebaseDynamicLinks.instance.onLink.listen((dynamicLinkData) {
//       _handleDeepLink(dynamicLinkData,context);
//
//     }).onError((error) {
//       print('onLink error');
//       print(error.message);
//     });
//
//
//
//   }
//    Future<Uri> createDynamicLink({ required String refcode}) async {
//     FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;
//
//     final DynamicLinkParameters parameters = DynamicLinkParameters(
//       // This should match firebase but without the username query param
//       uriPrefix: 'https://zinari.page.link',
//       // This can be whatever you want for the uri, https://yourapp.com/groupinvite?username=$userName
//       link: Uri.parse('https://zinari.page.link/register?ref=$refcode'),
//       androidParameters: AndroidParameters(
//         packageName: 'com.zeenah.zinari',
//         minimumVersion: 1,
//       ),
//       iosParameters: IOSParameters(
//         bundleId: 'com.zeenah.zinari',
//         minimumVersion: '1',
//         appStoreId: '',
//       ),
//     );
//     final link =  await dynamicLinks.buildLink(parameters);
//     final ShortDynamicLink shortLink = await dynamicLinks.buildShortLink(parameters);
//     var url = shortLink.shortUrl;
//     print(link);
//     print(url);
//     return url;
//   }
//   Future<void> _handleDeepLink(PendingDynamicLinkData? data,context) async {
//     final Uri? deepLink = data!.link;
//
//
//       if (deepLink != null) {
//         var isRegister = deepLink.pathSegments.contains('register');
//         if (isRegister) {
//           refLink = deepLink.queryParameters['ref'];
//           if(refLink !=null){
//
//             // Get.toNamed(RouteNames.emailSignUp,arguments: refLink);
//             Get.to(EmailSignUp( referal: refLink));
//
//
//           }
//         }
//       }
//
//
//
//
//   }
// }
//
//
//
//
