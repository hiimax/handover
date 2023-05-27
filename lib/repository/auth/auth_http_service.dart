import '../../data/remote/base_http.dart';
import '../../res/import/import.dart';

class AuthHttpService extends AlsBaseHttpService implements AuthService {
  @override
  Future<Response> login({required Map<String, dynamic> data}) async {
    try {
      final res = await http.post(ApiRoutes.login, data: data);
      return res;
    } on DioError catch (e) {
      throw e;
    } on Exception catch (e) {
      throw e;
    }
  }

  @override
  Future<Response> register({required Map<String, dynamic> data}) async {
    try {
      final res = await http.post(ApiRoutes.register, data: data);
      return res;
    } on DioError catch (e) {
      throw e;
    } on Exception catch (e) {
      throw e;
    }
  }

  @override
  Future<Response> fetchUser() async {
    try {
      final res = await http.get(ApiRoutes.getuserprofile);
      return res;
    } on DioError catch (e) {
      throw e;
    } on Exception catch (e) {
      throw e;
    }
  }

  @override
  Future<Response> fetchUserWalletBalance() async {
    try {
      final res = await http.get(ApiRoutes.getwalletbalance);
      return res;
    } on DioError catch (e) {
      throw e;
    } on Exception catch (e) {
      throw e;
    }
  }

  @override
  Future<Response> resetPassword({required String email}) async {
    try {
      final res =
          await http.post(ApiRoutes.resetpassword, data: {"email": email});
      return res;
    } on DioError catch (e) {
      throw e;
    } on Exception catch (e) {
      throw e;
    }
  }

  @override
  Future<Response> sendOtp({required String phoneNumber}) async {
    try {
      final res =
          await http.post(ApiRoutes.sendotp, data: {"phone": phoneNumber});
      return res;
    } on DioError catch (e) {
      throw e;
    } on Exception catch (e) {
      throw e;
    }
  }

  @override
  Future<Response> verifyOtp({required Map<String, dynamic> data}) async {
    try {
      final res = await http.post(ApiRoutes.verifyotp, data: data);
      return res;
    } on DioError catch (e) {
      throw e;
    } on Exception catch (e) {
      throw e;
    }
  }
}
