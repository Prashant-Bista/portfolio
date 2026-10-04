import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_page_provider.g.dart';

@Riverpod(keepAlive:true)
class CurrentPage extends _$CurrentPage{
  
  @override 
  String build()=>"home";

  void changeCurrentPage(String pageName){
    state = pageName;
  }
}