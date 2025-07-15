import 'package:practice_demo01/src/core/env/env.dart';

class ApiConstants{
  static final String login = '${Env.baseUrl}/users/login';
  static final String register = '${Env.baseUrl}/users';

  static String getProduct='${Env.mfUrl}/wp-json/wc/v2/products';



  static final String getAllUser='${Env.baseUrl}/users';

  static final String getPopularProduct='${Env.mfUrl}/wp-json/wc/v3/products?orderby=popularity&per_page=14&page=1';



}