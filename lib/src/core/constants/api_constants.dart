class ApiConstants{

  static const String _baseUrl = 'https://api.squarelimousine.com';
  static const String _baseUrlMF = 'https://www.mffoodmart.com';

  static const String login = '$_baseUrl/users/login';
  static const String register = '$_baseUrl/users';

  static const String getProduct='$_baseUrlMF/wp-json/wc/v2/products';



  static const String getAllUser='$_baseUrl/users';

  static const String getPopularProduct='$_baseUrlMF/wp-json/wc/v3/products?orderby=popularity&per_page=14&page=1';



}