import 'package:flutter/material.dart';
import 'package:practice_demo01/src/core/contracts/base_page_contract.dart';
import 'package:practice_demo01/src/core/mixins/page_logger.dart';

class HomePage extends StatefulWidget with PageLogger implements BasePageContract{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

  @override
  void loadData() {
    print("Loading home data...");
  }
  @override
  String get pageTitle => "Home";
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
     const named='';
    final int dd;
    dd=0;
    widget.logLifeCycle("Home Page");
   widget.loadData();
    return Scaffold(
      appBar: AppBar(title: Text("${widget.pageTitle} page")),
      body:SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Welcome to Home Page")
            ],
          ),
        ),
      ),
    );
  }
}
