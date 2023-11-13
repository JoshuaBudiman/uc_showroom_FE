
part of 'models.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Vehicles {
  final int vehicleId;
  final String jenis;
  final String model;
  final int tahun;
  final int jumlahPenumpang;
  final String manufaktur;
  final double harga;
  String? tipeBahanBakar;  // For vehicles like cars
  double? luasBagasi; // For vehicles like cars
  int? jumlahRoda;   // For trucks
  double? luasKargo; // For trucks
  double? kapasitasBensin; // For motorcycles
  double? ukuranBagasi; // For motorcycles

  Vehicles({
    required this.vehicleId,
    required this.jenis,
    required this.model,
    required this.tahun,
    required this.jumlahPenumpang,
    required this.manufaktur,
    required this.harga,
    this.tipeBahanBakar,
    this.luasBagasi,
    this.jumlahRoda,
    this.luasKargo,
    this.kapasitasBensin,
    this.ukuranBagasi,
  });
  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vehicleId': vehicleId,
      'jenis': jenis,
      'model': model,
      'tahun': tahun,
      'jumlahPenumpang': jumlahPenumpang,
      'manufaktur': manufaktur,
      'harga': harga,
      'tipeBahanBakar': tipeBahanBakar,
      'luasBagasi': luasBagasi,
      'jumlahRoda': jumlahRoda,
      'luasKargo': luasKargo,
      'kapasitasBensin': kapasitasBensin,
      'ukuranBagasi': ukuranBagasi,
    };
  }

  factory Vehicles.fromMap(Map<String, dynamic> map) {
    return Vehicles(
      vehicleId: map['vehicleId'] as int,
      jenis: map['jenis'] as String,
      model: map['model'] as String,
      tahun: map['tahun'] as int,
      jumlahPenumpang: map['jumlahPenumpang'] as int,
      manufaktur: map['manufaktur'] as String,
      harga: map['harga'] as double,
      tipeBahanBakar: map['tipeBahanBakar'] != null ? map['tipeBahanBakar'] as String : null,
      luasBagasi: map['luasBagasi'] != null ? map['luasBagasi'] as double : null,
      jumlahRoda: map['jumlahRoda'] != null ? map['jumlahRoda'] as int : null,
      luasKargo: map['luasKargo'] != null ? map['luasKargo'] as double : null,
      kapasitasBensin: map['kapasitasBensin'] != null ? map['kapasitasBensin'] as double : null,
      ukuranBagasi: map['ukuranBagasi'] != null ? map['ukuranBagasi'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Vehicles.fromJson(String source) => Vehicles.fromMap(json.decode(source) as Map<String, dynamic>);
}
