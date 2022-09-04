import 'dart:convert';

//NAMA : FIKRI ARIFIVNAOD
//UPN "VETERAN" JATIM
//Kelompok 1

void main(List<String> args) {
  var kendaran1 = mobil(
      jenis: "Honda",
      nama: "brio",
      jumlahban: 4,
      Maxmuatan: 300,
      nomormesin: 1234,
      nomorplat: 123);

  print("==================");
  print(kendaran1.nama);
  kendaran1.Bensin();
  print("===================");
}

// class
class kendaraan {
  String? nama, jenis, kecepatan, tipe, warna, merek;

  int? jumlahban, nomorplat, nomormesin;

  kendaraan(
      {this.nama,
      this.jenis,
      this.jumlahban,
      this.kecepatan,
      this.merek,
      this.nomormesin,
      this.nomorplat,
      this.tipe,
      this.warna});
}

// subclass
class mobil extends kendaraan implements bensinmobil {
  int? Maxmuatan;
  mobil(
      {this.Maxmuatan,
      jenis,
      nama,
      jumlahban,
      kecepatan,
      tipe,
      warna,
      merek,
      nomorplat,
      nomormesin})
      : super(
            jenis: jenis,
            nama: nama,
            jumlahban: jumlahban,
            nomormesin: nomormesin,
            nomorplat: nomorplat,
            tipe: tipe,
            warna: warna,
            kecepatan: kecepatan,
            merek: merek);

  @override
  void Bensin() {
    print("Bensin Tinggal Sedikit");
  }
}

// implisit interface
class bensinmobil {
  void Bensin() {}
}
