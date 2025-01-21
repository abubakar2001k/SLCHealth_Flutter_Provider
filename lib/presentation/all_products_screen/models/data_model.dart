class DataModel {
  final int? id;
  final String? title;
  final double? price;
  final String? description;
  final String? category;
  final String? image;
  final Rating? rating;

  DataModel({this.title, this.description,
    this.rating,
    this.price, this.image, this.id, this.category});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      id: json['id'],
      title: json['title'],
      price: json['price'] is int ? (json['price'] as int).toDouble() : json['price'], // Convert price to double if it's an int
      description: json['description'],
      category: json['category'],
      image: json['image'],
      rating: Rating.formJson(json['rating']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'category': category,
      'image': image,
      'rating': rating?.toJson(),
    };
  }
}

class Rating {
  final double? rate;
  final int? count;

  Rating({this.count, this.rate});

  factory Rating.formJson(Map<String, dynamic> json) {
    return Rating(
      rate: json['rate'] is int ? (json['rate'] as int).toDouble() : json['rate'], // Convert rate to double if it's an int
      count: json['count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'rate': rate,
      'count': count,
    };
  }
}
