part of 'models.dart';
class Customer {
  final int customerId;
  final String nama;
  final String alamat;
  final String idCard;

  Customer({
    required this.customerId, 
    required this.nama, 
    required this.alamat, 
    required this.idCard});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerId': customerId,
      'nama': nama,
      'alamat': alamat,
      'idCard': idCard,
    };
  }

  factory Customer.fromMap(Map<String, dynamic> map) {
    return Customer(
      customerId: map['customerId'] as int,
      nama: map['nama'] as String,
      alamat: map['alamat'] as String,
      idCard: map['idCard'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Customer.fromJson(String source) => Customer.fromMap(json.decode(source) as Map<String, dynamic>);

  Customer copyWith({
    int? customerId,
    String? nama,
    String? alamat,
    String? idCard,
  }) {
    return Customer(
      customerId: customerId ?? this.customerId,
      nama: nama ?? this.nama,
      alamat: alamat ?? this.alamat,
      idCard: idCard ?? this.idCard,
    );
  }
}
