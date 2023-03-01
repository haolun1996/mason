import 'package:get/get.dart';
import 'package:{{project_name.snakeCase()}}/app/ui/home/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
