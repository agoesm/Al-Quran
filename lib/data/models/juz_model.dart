class JuzModel {
  late final int nomor;
  late final String nama;
  late final String namaLatin;
  late final int jumlahAyat;
  late final String tempatTurun;
  late final String arti;
  late final String deskripsi;

  JuzModel({
    required this.nomor,
    required this.nama,
    required this.namaLatin,
    required this.jumlahAyat,
    required this.tempatTurun,
    required this.arti,
    required this.deskripsi,
  });

  JuzModel.fromJson(Map<String, dynamic> json) {
    nomor = json['nomor'];
    nama = json['nama'];
    namaLatin = json['namaLatin'];
    jumlahAyat = json['jumlahAyat'];
    tempatTurun = json['tempatTurun'];
    arti = json['arti'];
    deskripsi = json['deskripsi'];
  }
}
