import '../../data/remote/base_http.dart';
import '../../data/remote/property/property_service.dart';
import '../../res/import/import.dart';

class PropertyHttpService extends AlsBaseHttpService
    implements PropertyService {
  @override
  Future<Response> addNewProperty({required Map<String, dynamic> data}) async {
    try {
      final res = await http.post(ApiRoutes.addnewproperty, data: data);
      return res;
    } on DioError catch (e) {
      throw e;
    } on Exception catch (e) {
      throw e;
    }
  }

  @override
  Future<Response> getAllProperty() async {
    try {
      final res = await http.get(ApiRoutes.getallproperty);
      return res;
    } on DioError catch (e) {
      throw e;
    } on Exception catch (e) {
      throw e;
    }
  }

  @override
  Future<Response> getSingleProperty() async {
    try {
      final res = await http.get(ApiRoutes.getsingleproperty);
      return res;
    } on DioError catch (e) {
      throw e;
    } on Exception catch (e) {
      throw e;
    }
  }

  @override
  Future<Response> getUserProperty() async {
    try {
      final res = await http.get(ApiRoutes.getuserproperty);
      return res;
    } on DioError catch (e) {
      throw e;
    } on Exception catch (e) {
      throw e;
    }
  }
}
