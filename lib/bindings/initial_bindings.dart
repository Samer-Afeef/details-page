import 'package:get/get.dart';
import '../controller/items_details_controller.dart';
import '../core/class/crud.dart';

class InitialBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(Crud());
    Get.lazyPut<ItemsDetailsControllerImp>(() => ItemsDetailsControllerImp());

  }

}