class Product {
  int? id;
  String name = "";
  String description = "";
  double? unitPrice;

  Product({required this.name, required this.description, this.unitPrice});
  Product.withId(this.id, this.name, this.description, this.unitPrice);

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["name"] = name;
    map["description"] = description;
    map["unitPrice"] = unitPrice;

    if (id != null) {
      map["id"] = id;
    }

    return map;
  }

  Product.fromObject(dynamic o){
    id = o["id"];
    name = o["name"];
    description = o["description"];
    unitPrice = double.tryParse(o["unitPrice"].toString());
  }
}
