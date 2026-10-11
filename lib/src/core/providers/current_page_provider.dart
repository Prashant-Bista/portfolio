import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_page_provider.g.dart';

@Riverpod(keepAlive:true)
class CurrentPage extends _$CurrentPage{
  
  @override 
  String build(BuildContext context){
    return GoRouterState.of(context).uri.path;
  }

  void changeCurrentPage(String pageName){
    state = pageName;
  }
}