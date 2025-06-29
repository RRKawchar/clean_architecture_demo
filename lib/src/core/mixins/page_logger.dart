mixin PageLogger{

  void logLifeCycle(String pageName){
    print("[$pageName] Page built at ${DateTime.now()}");
  }


}