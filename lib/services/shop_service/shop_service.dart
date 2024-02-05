import '../../models/shop_model/shop_model.dart';

class ShopService{

  final List<Shop> shops=[];
  void registerShop (Shop shop){
    shops.add(shop);
    print('Shop Registered');
  }

  List<Shop> getAllShops(){
    return List.from(shops);
  }

}