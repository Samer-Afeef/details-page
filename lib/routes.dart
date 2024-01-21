



import 'package:easy_testing/view/screens/item_details.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'core/constant/app_routes.dart';
import 'main.dart';

List<GetPage<dynamic>> pagesRoute =[

  GetPage(name:AppRoutes.itemDetails, page: ()=> const ItemDetails()),
];


