import "dart:io";

void main(List<String> args) {
  String menu = "1. Pertambahan \n2. Pengurangan \n3. Perkalian \n4. Pembagian";
  print("============================");
  print("SELAMAT DATANG DI KAKULATOR FIKRI");
  print("============================");
  stdout.write("Masukan Angka Pertama : ");
  double angka1 = double.parse(stdin.readLineSync()!);
  stdout.write("Masukan Angka kedua : ");
  double angka2 = double.parse(stdin.readLineSync()!);
  print("=========MENU===============");
  print(menu);
  //memilih opsi pilihan
  stdout.write("Pilih Operasi Angka : ");
  double pilihan = double.parse(stdin.readLineSync()!);
  print("=========HASIL===============");

  if (pilihan == 1) {
    print("Hasil Dari Penjumlahan ${angka1 + angka2}");
  } else if (pilihan == 2) {
    print("Hasil Dari Pengurangan ${angka1 - angka2}");
  } else if (pilihan == 3) {
    print("Hasil Dari Perkalian ${angka1 * angka2}");
  } else if (pilihan == 4) {
    print("Hasil Dari Pembagian ${angka1 / angka2}");
  }
  if (pilihan > 4 || pilihan < 1) {
    print("MOHON MAAF PILIHAN TIDAK ADA ");
  }
}
