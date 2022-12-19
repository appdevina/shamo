import 'package:shamo/models/product_model.dart';

class MessageModel {
  String? message;
  late int userId;
  String? userName;
  String? userImage;
  late bool isFromUser;
  late ProductModel product;
  DateTime? createdAt;
  DateTime? updatedAt;

  MessageModel(
      {this.message,
      required this.userId,
      this.userName,
      this.userImage,
      required this.isFromUser,
      required this.product,
      this.createdAt,
      this.updatedAt});

  MessageModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    userId = json['userId'];
    userName = json['userName'];
    userImage = json['userImage'];
    isFromUser = json['isFromUser'];
    product = json['product'] == {}
        ? UninitializedProductModel()
        : ProductModel.fromJson(json['product']);
    createdAt = DateTime.parse(json['createdAt']);
    updatedAt = DateTime.parse(json['updatedAt']);
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'userId': userId,
      'userName': userName,
      'userImage': userImage,
      'isFromUser': isFromUser,
      'product': product is UninitializedProductModel ? {} : product.toJson(),
      'createdAt': createdAt.toString(),
      'updatedAt': updatedAt.toString(),
    };
  }
}
