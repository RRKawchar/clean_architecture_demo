import 'package:get_storage/get_storage.dart';

class LocalStorageService{
 static final LocalStorageService instance=LocalStorageService._internal();
 // factory LocalStorageService() => _instance;
 LocalStorageService._internal();

  final GetStorage _box=GetStorage();

  Future<void> save<T>(String key,T value)async{
   await _box.write(key, value);
  }


  T? getData<T>(String key){
   return _box.read(key);
  }


  Future<void> delete(String key)async{

  return await _box.remove(key);
  }


  Future<void> clear()async{
   return await _box.erase();
  }


  bool has(String key){
   return _box.hasData(key);
  }




}