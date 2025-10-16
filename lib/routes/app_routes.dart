
import 'package:get/get.dart';
import 'package:getx_project/views/screens/named_routes/named_routes.dart';

class AppRoutes{

  static const String home = '/home';
  static const String screen1 = '/screen1';
  static const String screen2 = '/screen2';
  static const String screen3 = '/screen3';
  static const String screen4 = '/screen4';


  static final routes = [
    GetPage(name: home, page: () => Home()),
    GetPage(name: screen1, page: () => Screen1()),
    GetPage(name: screen2, page: () => Screen2()),
    GetPage(name: screen3, page: () => Screen3()),
    GetPage(name: screen4, page: () => Screen4())
  ];

}