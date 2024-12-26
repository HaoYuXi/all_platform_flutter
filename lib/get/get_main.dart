import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStatusController extends GetxController {
  var count = 0.obs;

  increment() => count++;
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GetStatusController controller = Get.put(GetStatusController());
    // Get.to(page);
    Get.find();
    return const Placeholder();
  }
}

class UserInfoPage extends GetView<GetStatusController>{
  @override
  Widget build(BuildContext context) {

    return Scaffold();
  }

}
