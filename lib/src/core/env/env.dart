
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: ".env")
final class Env{
  @EnviedField(varName:"BASE_URL",obfuscate: true)
  static String baseUrl=_Env.baseUrl;


  @EnviedField(varName: "API_KEY", obfuscate: true)
  static String apiKey = _Env.apiKey;
}