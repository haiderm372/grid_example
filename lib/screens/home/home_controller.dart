import 'package:get/get.dart';

import './employee_data_source.dart';
import './employee_model.dart';

class HomeController extends GetxController {
  var empList = [...employeesList].obs;

  late EmployeeDataSource empDataSource;

  @override
  void onInit() {
    empDataSource = EmployeeDataSource(emps: empList);
    super.onInit();
  }
}
