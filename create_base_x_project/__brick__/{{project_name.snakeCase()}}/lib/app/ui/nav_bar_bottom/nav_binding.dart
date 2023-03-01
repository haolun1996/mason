import 'package:get/get.dart';
import 'package:{{project_name.snakeCase()}}/app/ui/home/home_controller.dart';
import 'package:{{project_name.snakeCase()}}/app/ui/nav_bar_bottom/nav_controller.dart';

class NavBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(NavBarController());
  }
}
