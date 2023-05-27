import 'package:diox/diox.dart';

abstract class AuthService {
  Future<Response> login({required Map<String, dynamic> data});

  Future<Response> register({required Map<String, dynamic> data});

  Future<Response> resetPassword({required String email});

  Future<Response> sendOtp({required String phoneNumber});

  Future<Response> verifyOtp({required Map<String, dynamic> data});

  Future<Response> fetchUser();

  Future<Response> fetchUserWalletBalance();

// Future<Response> logout();
}
