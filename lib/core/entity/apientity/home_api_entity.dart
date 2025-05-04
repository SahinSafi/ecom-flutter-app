class HomeApiEntity {
  HomeApiEntity({
      num? statusCode, 
      String? message, 
      Data? data,}){
    _statusCode = statusCode;
    _message = message;
    _data = data;
}

  HomeApiEntity.fromJson(dynamic json) {
    _statusCode = json['statusCode'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  num? _statusCode;
  String? _message;
  Data? _data;

HomeApiEntity copyWith({  num? statusCode,
  String? message,
  Data? data,
}) => HomeApiEntity(  statusCode: statusCode ?? _statusCode,
  message: message ?? _message,
  data: data ?? _data,
);

  num get statusCode => _statusCode ?? -1;
  String get message => _message ?? "";
  Data get data => _data ?? Data();

}

class Data {

  Data({
      List<Banner>? banner, 
      List<Category>? category,}){
    _banner = banner;
    _category = category;
}

  Data.fromJson(dynamic json) {
    if (json['banner'] != null) {
      _banner = [];
      json['banner'].forEach((v) {
        _banner?.add(Banner.fromJson(v));
      });
    }
    if (json['category'] != null) {
      _category = [];
      json['category'].forEach((v) {
        _category?.add(Category.fromJson(v));
      });
    }
  }

  List<Banner>? _banner;
  List<Category>? _category;

Data copyWith({  List<Banner>? banner,
  List<Category>? category,
}) => Data(  banner: banner ?? _banner,
  category: category ?? _category,
);

  List<Banner> get banner => _banner ?? [];
  List<Category> get category => _category ?? [];

}

class Category {
  Category({
      num? id, 
      String? title, 
      String? imageUrl,}){
    _id = id;
    _title = title;
    _imageUrl = imageUrl;
}

  Category.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _imageUrl = json['imageUrl'];
  }

  num? _id;
  String? _title;
  String? _imageUrl;

Category copyWith({  num? id,
  String? title,
  String? imageUrl,
}) => Category(  id: id ?? _id,
  title: title ?? _title,
  imageUrl: imageUrl ?? _imageUrl,
);

  num get id => _id ?? -1;
  String get title => _title ?? "";
  String get imageUrl => _imageUrl ?? "";

}

class Banner {
  Banner({
      num? id, 
      num? productId, 
      String? imageUrl,}){
    _id = id;
    _productId = productId;
    _imageUrl = imageUrl;
}

  Banner.fromJson(dynamic json) {
    _id = json['id'];
    _productId = json['productId'];
    _imageUrl = json['imageUrl'];
  }

  num? _id;
  num? _productId;
  String? _imageUrl;

Banner copyWith({  num? id,
  num? productId,
  String? imageUrl,
}) => Banner(  id: id ?? _id,
  productId: productId ?? _productId,
  imageUrl: imageUrl ?? _imageUrl,
);

  num get id => _id ?? -1;
  num get productId => _productId ?? -1;
  String get imageUrl => _imageUrl ?? "";

}