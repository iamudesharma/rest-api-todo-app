import 'package:get/get.dart';
import 'package:http/http.dart';
import './todos_controller.dart';

class TodosBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      TodosController(
        // Client(),
      ),
    );
  }
}
