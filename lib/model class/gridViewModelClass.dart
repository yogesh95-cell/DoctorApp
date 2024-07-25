class DoctorsModel{
  String name;
  String imgUrl;
  String speciality;
  double payment;
  int patientNo;
  int experience;
  double rating;
  List appointmentDays;
  List appointmentTime;
  String aboutDoc;

  DoctorsModel({
    required this.name,
    required this.imgUrl,
    required this.speciality,
    required this.payment,
    required this.patientNo,
    required this.experience,
    required this.rating,
    required this.appointmentDays,
    required this.appointmentTime,
    required this.aboutDoc,
});
}