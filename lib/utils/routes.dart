import 'package:get/get.dart';

import '../screens/home/home_screen.dart';

class GetRoutes {
  static List<GetPage<dynamic>>? getPages = [
    GetPage(
      name: HomeScreen.routeName,
      page: () => HomeScreen(),
    ),
  ];
}
