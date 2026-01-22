import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:banking_online/core/config/app_config.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) = _ApiClient;


}
