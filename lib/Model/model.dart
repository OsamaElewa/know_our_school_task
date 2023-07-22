//TODO: add your model class here
class SchoolModel {
  String? schoolName;
  String? schoolAddress;
  String? numberOfStudents;
  String? numberOfTeachers;

  SchoolModel(
      {this.schoolName,
        this.schoolAddress,
        this.numberOfStudents,
        this.numberOfTeachers});

  SchoolModel.fromJson(Map<String, dynamic> json) {
    schoolName = json['School Name'];
    schoolAddress = json['School Address'];
    numberOfStudents = json['Number of Students'];
    numberOfTeachers = json['Number of Teachers'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['School Name'] = this.schoolName;
    data['School Address'] = this.schoolAddress;
    data['Number of Students'] = this.numberOfStudents;
    data['Number of Teachers'] = this.numberOfTeachers;
    return data;
  }
}