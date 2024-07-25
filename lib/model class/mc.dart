class BookModel{
  String bookName;
  String author;
  String imgUrl;
  String genre;
  String publishDate;
  double rating;
  int price;
  String  reviews;

 BookModel({
    required this.bookName,
    required this.author,
    required this.imgUrl,
   required this.genre,
    required this.publishDate,
    required this.rating,
   required this.price,
    required this.reviews,
  });
}