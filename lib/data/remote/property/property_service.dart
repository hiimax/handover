import 'package:diox/diox.dart';

abstract class PropertyService {
  Future<Response> addNewProperty({required Map<String, dynamic> data});

  Future<Response> getAllProperty();

  Future<Response> getSingleProperty();

  Future<Response> getUserProperty();

// Future<Response> logout();
}
