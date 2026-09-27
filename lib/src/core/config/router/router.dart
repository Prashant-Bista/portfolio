import 'package:portfolio/src/core/config/router/route_model.dart';

class Routes{
  static const RouteModel home = RouteModel(name: "home", path: "/");
    static const RouteModel about = RouteModel(name: "about", path: "/about");

  static const RouteModel blog = RouteModel(name: "blog", path: "/blog");
  static const RouteModel experience = RouteModel(name: "experience", path: "/experience");

  static const RouteModel contact = RouteModel(name: "contact", path: "/contact");

  static const RouteModel projects = RouteModel(name: "projects", path: "/projects");

}