
import 'package:go_router/go_router.dart';
import 'package:portfolio/src/core/config/router/routes.dart';
import 'package:portfolio/src/features/contact/presentation/screens/contact_screen.dart';
import 'package:portfolio/src/features/experience/presentation/screens/experience_screen.dart';
import 'package:portfolio/src/features/home/presentation/screens/home_screen.dart';
import 'package:portfolio/src/features/projects/presentation/screens/case_study_screen.dart';
import 'package:portfolio/src/features/projects/presentation/screens/project_screen.dart';

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
       GoRoute(
        path: Routes.projects.path,
        name: Routes.projects.name,
        builder: (context, state) {
          
          return ProjectScreen();
        },
      ),
       GoRoute(
        path: Routes.contact.path,
        name: Routes.contact.name,
        builder: (context, state) {
          
          return ContactScreen();
        },
      ),
      GoRoute(
        path: Routes.caseStudy.path,
        name: Routes.caseStudy.name,
        builder: (context, state) {
          final data = state.extra as Map<String,dynamic>;
          return CaseStudyScreen(projectName: data["name"], caseStudy: data["case_study"],);
        },
      ),
    ]
  );}
