class AyatModel {
  late final int nomorAyat;
  late final String teksArab;
  late final String teksLatin;
  late final String teksIndonesia;

  AyatModel({
    required this.nomorAyat,
    required this.teksArab,
    required this.teksLatin,
    required this.teksIndonesia,
  });

  factory AyatModel.fromJson(Map<String, dynamic> json) => AyatModel(
        nomorAyat: json['nomorAyat'],
        teksArab: json['teksArab'],
        teksLatin: json['teksLatin'],
        teksIndonesia: json['teksIndonesia'],
      );

  Map<String, dynamic> toJson() => {
        'nomorAyat': nomorAyat,
        'teksArab': teksArab,
        'teksLatin': teksLatin,
        'teksIndonesia': teksIndonesia,
      };
}
