//this abstract class act as a bridge between the two concreate classes two the dependeny ,
//and make them lossly coupled ,and by using this technique and inverted the dependency(عكسنا الاعتمادية).
//we made the high and low levels depend on the abstraction.
abstract class DeliveryService {
  void deliverProduct(Prodct prodct);
}

//this is the low level component.
class DeliveryDriver implements DeliveryService {
  @override
  void deliverProduct(Prodct prodct) {}
}

//this is the high level component.
class DeliveryCompany {
  DeliveryService deliveryService;
  DeliveryCompany({
    required this.deliveryService,
  });
  void sendProduct(Prodct prodct) {
    deliveryService.deliverProduct(prodct);
  }
}

class Prodct {}

void main(List<String> args) {
  DeliveryService deliveryService = DeliveryDriver();
  DeliveryCompany deliveryCompany =
      DeliveryCompany(deliveryService: deliveryService);
  deliveryCompany.sendProduct(Prodct());
}
