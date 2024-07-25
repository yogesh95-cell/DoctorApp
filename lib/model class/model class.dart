class ModelClass {
  String productName;
  String imgUrl;
  double rating;
  int reviews;
  double price;

  ModelClass({
    required this.productName,
    required this.imgUrl,
    required this.rating,
    required this.reviews,
    required this.price,
  });
}

class Products {
  String productName;
  String imgUrl;
  // double rating;
// int review;
// double price;
  String company;

  Products(
      {required this.productName,
      required this.imgUrl,
        // required this.rating,
      // required this.review,
        // required this.price,
      required this.company});
}

