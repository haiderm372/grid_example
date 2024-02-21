import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:flutter/material.dart';

import 'employee_model.dart';

class EmployeeDataSource extends DataGridSource {
  EmployeeDataSource({required List<Employee> emps}) {
    employees = emps.map((e) {
      return DataGridRow(
        cells: [
          DataGridCell<int>(
            columnName: 'id',
            value: e.id,
          ),
          DataGridCell<String>(
            columnName: 'name',
            value: e.name,
          ),
          DataGridCell<String>(
            columnName: 'designation',
            value: e.designation,
          ),
        ],
      );
    }).toList();
  }

  List<DataGridRow> employees = [];

  @override
  List<DataGridRow> get rows => employees;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: [
        ...row.getCells().map(
          (data) {
            return TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              textCapitalization: data.columnName == 'id'
                  ? TextCapitalization.none
                  : TextCapitalization.words,
              textInputAction: TextInputAction.done,
              keyboardType: data.columnName == 'id'
                  ? TextInputType.number
                  : TextInputType.text,
              inputFormatters: data.columnName == 'id'
                  ? [FilteringTextInputFormatter.digitsOnly]
                  : [],
              controller: TextEditingController(text: data.value.toString()),
              onTapOutside: (value) {
                FocusManager.instance.primaryFocus!.unfocus();
              },
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(16.0),
                border: InputBorder.none,
              ),
            );
          },
        ).toList(),
      ],
    );
  }
}
