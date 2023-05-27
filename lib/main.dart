import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../res/import/import.dart';

final navigatorKey = GlobalKey<NavigatorState>();
var logger = Logger();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory? dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  await Hive.openBox("app_data");
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  Future.delayed(Duration.zero).then((value) async {
    String? deviceId = await PlatformDeviceId.getDeviceId;
    await LocalStorage.setItem("device_token", '$deviceId');
    print('device token $value');
  });
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ConnectivityResult? Newresult;
  final _connectivity = Connectivity();
  final _controller = StreamController.broadcast();

  @override
  void initState() {
    // TODO: implement initState
    initialise();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    disposeStream();
    super.dispose();
  }

  void initialise() async {
    ConnectivityResult result = await _connectivity.checkConnectivity();
    _checkStatus(result);
    _connectivity.onConnectivityChanged.listen((result) {
      _checkStatus(result);
      if (result == ConnectivityResult.none) {
        print(result);
        // showInternetLoaderDialog(context, 'No internet connection',
        //     'Hey! please connect to internet and this page will go off', () {
        //   Navigator.pop(context);
        // });
      }
      Newresult = result;
    });
  }

  void _checkStatus(ConnectivityResult result) async {
    try {
      final result = await InternetAddress.lookup('example.com');
      setState(() {});
    } on SocketException catch (_) {
      setState(() {});
    }
  }

  void disposeStream() => _controller.close();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
      },
      child: GetMaterialApp(
        builder: (BuildContext context, Widget? widget) {
          ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
            return CustomError(errorDetails: errorDetails);
          };
          return widget!;
        },

        debugShowCheckedModeBanner: false,
        title: AppName,
        theme: handoverhelper.lightTheme(),
        initialRoute: '/',
        navigatorKey: navigatorKey,
        home: Builder(builder: (context) {
          SizeConfig.init(context);
          return OnboardingScreen();
        }),
      ),
    );
  }
}
