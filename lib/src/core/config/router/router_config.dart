
import 'package:go_router/go_router.dart';
import 'package:portfolio/src/core/config/router/routes.dart';
import 'package:portfolio/src/features/experience/presentation/screens/experience_screen.dart';
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
       GoRoute(
        path: Routes.experience.path,
        name: Routes.experience.name,
        builder: (context, state) {
          
          return ExperienceScreen();
        },
      ),
    ]
  );}
