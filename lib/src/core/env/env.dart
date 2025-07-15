
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: ".env")
final class Env{
  @EnviedField(varName:"BASE_URL",obfuscate: true)
  static String baseUrl=_Env.baseUrl;

  @EnviedField(varName: "API_KEY", obfuscate: true)
  static String apiKey = _Env.apiKey;


  @EnviedField(varName:"MF_URL",obfuscate: true)
  static String mfUrl=_Env.mfUrl;


  @EnviedField(varName:"USERNAME",obfuscate: true)
  static String userName=_Env.userName;

  @EnviedField(varName:"USERPASS",obfuscate: true)
  static String userPass=_Env.userPass;


}