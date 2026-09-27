import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/src/core/components/portfolio_schema.dart';
import 'package:portfolio/src/core/config/router/router_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      minTextAdapt: false,
      splitScreenMode: false,
      child: MaterialApp.router(
        title: 'Flutter Demo',
        routerConfig: AppRouterConfig.router,
        theme: ThemeData(
          
          colorScheme: AppTheme.colorScheme,
          textTheme: AppTheme.textTheme
        ),
        
      ),
    );
  }
}
