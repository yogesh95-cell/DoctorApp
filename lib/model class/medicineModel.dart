class MedicineModel{
 String shopUrl;
 String shopName;
 String Location;
 int contactNo;


  MedicineModel({
    required this.shopUrl,
    required this.shopName,
    required this.Location,
    required this.contactNo,

});
}

class Medicine{
  String medicineName;
  String medicineUrl;
  String weight;
  double price;

  Medicine({
   required this.medicineName,
   required this.medicineUrl,
   required this.weight,
   required this.price,
});
}