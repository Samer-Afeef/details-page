import './routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './bindings/initial_bindings.dart';
import './core/constant/app_routes.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
    theme: ThemeData(
      useMaterial3: true,),
      locale: const Locale("ar"),
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBindings() ,
      initialRoute: AppRoutes.itemDetails,
       getPages: pagesRoute,
    );
  }
}
