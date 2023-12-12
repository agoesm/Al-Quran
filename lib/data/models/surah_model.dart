class SurahModel {
  late final int nomor;
  late final String nama;
  late final String namaLatin;
  late final int jumlahAyat;
  late final String tempatTurun;
  late final String arti;
  late final String deskripsi;

  SurahModel({
    required this.nomor,
    required this.nama,
    required this.namaLatin,
    required this.jumlahAyat,
    required this.tempatTurun,
    required this.arti,
    required this.deskripsi,
  });

  //// CARA SINGKAT
  // SurahModel.fromJson(Map<String, dynamic> json) {
  //   nomor = json['nomor'];
  //   nama = json['nama'];
  //   namaLatin = json['namaLatin'];
  //   jumlahAyat = json['jumlahAyat'];
  //   tempatTurun = json['tempatTurun'];
  //   arti = json['arti'];
  //   deskripsi = json['deskripsi'];
  // }

  factory SurahModel.fromJson(Map<String, dynamic> json) => SurahModel(
        nomor: json['nomor'],
        nama: json['nama'],
        namaLatin: json['namaLatin'],
        jumlahAyat: json['jumlahAyat'],
        tempatTurun: json['tempatTurun'],
        arti: json['arti'],
        deskripsi: json['deskripsi'],
      );

  Map<String, dynamic> toJson() => {
        'nomor': nomor,
        'nama': nama,
        'namaLatin': namaLatin,
        'jumlahAyat': jumlahAyat,
        'tempatTurun': tempatTurun,
        'arti': arti,
        'deskripsi': deskripsi,
      };
}
