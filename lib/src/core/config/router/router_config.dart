
import 'package:go_router/go_router.dart';
import 'package:portfolio/src/core/config/router/router.dart';
import 'package:portfolio/src/features/home/presentation/screens/home_screen.dart';

class AppRouterConfig {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.home.path,
    routes: [
       GoRoute(
        path: Routes.home.path,
        name: Routes.home.name,
        builder: (context, state) {
          
          return HomeScreen();
        },
      ),
    ]
  );}
