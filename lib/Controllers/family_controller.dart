import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_project/Model/family_model.dart';

class FamilyProvider extends ChangeNotifier {
  final FamilyModel _service;

  FamilyModel get service => _service;

  FamilyProvider(this._service);

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController get nameController => _nameController;

  TextEditingController get numberController => _numberController;

  TextEditingController get dateController => _dateController;

  GlobalKey<FormState> get formKey => _formKey;

  List<String> relationList = [
    'Select Relation',
    'Father',
    'Mother',
    'Brother',
    'Sister'
  ];

  String selectedRelation = 'Select Relation';

  bool male = true;

  void gender(bool val) {
    male = val;
    notifyListeners();
  }

  datePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      _dateController.text = DateFormat('dd MMM yyyy').format(picked);
      notifyListeners();
    }
  }


  saveData(){}

}
