
enum ShopCategory{workshop,catering}

class Shop{
  String username;
  String email;
  String password;
  ShopCategory shopCategory;

  Shop({
    required this.shopCategory,required this.password,required this.email,required this.username
});
}