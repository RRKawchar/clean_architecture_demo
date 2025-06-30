

import 'package:json_annotation/json_annotation.dart';


part 'test_model.g.dart';

@JsonSerializable()
class TestModel{

  final String name;
  final String email;
  final String id;

  TestModel({required this.name,required this.email,required this.id});


  factory TestModel.fromJson(Map<String,dynamic> json)=> _$TestModelFromJson(json);
  Map<String,dynamic> toJson() => _$TestModelToJson(this);

}