//TODO: add your view model class here

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:knowourschool/Model/model.dart';

class ProviderSchool with ChangeNotifier{
  String schoolName = "School Name";
  String schoolAddress = "School Address";
  String studentsNo = "Number of Students";
  String teachersNo = "Number of Teachers";

  void getSchoolData() async{
    final response = await rootBundle.loadString('lib/JSONdata/SchoolData.json');
    final data = SchoolModel.fromJson(jsonDecode(response)[0]);
    schoolName = data.schoolName!;
    schoolAddress = data.schoolAddress!;
    studentsNo = data.numberOfStudents!;
    teachersNo = data.numberOfTeachers!;
    notifyListeners();
  }
}