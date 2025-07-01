class ProductsApiEntity {

  ProductsApiEntity({
      num? statusCode, 
      String? message, 
      num? page, 
      List<Data>? data,}){
    _statusCode = statusCode;
    _message = message;
    _page = page;
    _data = data;
}

  ProductsApiEntity.fromJson(dynamic json) {
    _statusCode = json['statusCode'];
    _message = json['message'];
    _page = json['page'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }

  num? _statusCode;
  String? _message;
  num? _page;
  List<Data>? _data;

  num get statusCode => _statusCode ?? -1;
  String get message => _message ?? "";
  num get page => _page ?? 1;
  List<Data> get data => _data ?? [];

}

class Data {

  Data({
      num? id, 
      String? title, 
      num? previousPrice, 
      num? currentPrice, 
      bool? inStock, 
      String? imageUrl,}){
    _id = id;
    _title = title;
    _previousPrice = previousPrice;
    _currentPrice = currentPrice;
    _inStock = inStock;
    _imageUrl = imageUrl;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _previousPrice = json['previousPrice'];
    _currentPrice = json['currentPrice'];
    _inStock = json['inStock'];
    _imageUrl = json['imageUrl'];
  }

  num? _id;
  String? _title;
  num? _previousPrice;
  num? _currentPrice;
  bool? _inStock;
  String? _imageUrl;

  num get id => _id ?? -1;
  String get title => _title ?? "";
  num get previousPrice => _previousPrice ?? 0;
  num get currentPrice => _currentPrice ?? 0;
  bool get inStock => _inStock ?? false;
  String get imageUrl => _imageUrl ?? "";

}