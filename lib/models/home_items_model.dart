class HomeItemsModel {
  int id;
  int imageItem;
  String imageUrl;
  String productTitle;
  String productDate;
  String productDescription;
  String location;
  String price;
  bool isWishListed;

  HomeItemsModel(
      {required this.id,
      required this.imageItem,
      required this.imageUrl,
      required this.productTitle,
      required this.productDate,
      required this.productDescription,
      required this.location,
      required this.price,
      required this.isWishListed});
}
