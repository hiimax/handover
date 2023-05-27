import '../../res/import/import.dart';

class AlsTransformer extends DefaultTransformer {
  AlsTransformer() : super(jsonDecodeCallback: parseJson);
}

class AlsBaseHttpService {
  late Dio http;

  AlsBaseHttpService() {
    http = Dio(BaseOptions(
        baseUrl: ApiRoutes.baseUrl,
        connectTimeout: Duration(seconds: 30),
        receiveTimeout: Duration(seconds: 30),
        sendTimeout: Duration(seconds: 30),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        }))
      ..interceptors.add(InterceptorsWrapper(onRequest: (opts, handler) async {
        String? token = await LocalStorage.getItem("token");
        opts.headers.addAll({'Authorization': "Bearer $token"});

        return handler.next(opts);
      }, onError: (err, handler) {
        logger.e(err.response?.data.toString());

        return handler.next(err);
      }, onResponse: (response, handler) {
        logger.d({"url": response.requestOptions.path, "data": response.data});
        return handler.next(response);
      }));
  }
}
