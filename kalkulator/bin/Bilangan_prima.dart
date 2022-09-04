import "dart:io";

void main(List<String> args) {
  print("============================");
  print("SELAMAT DATANG DI MENGETAHUI BILANGAN PRIMA FIKRI");
  print("============================");
  int hitung = 0;
  stdout.write("Masukan Bilangan Anda : ");
  int bilangan = int.parse(stdin.readLineSync()!);
  print("===========HASIL============");
  for (int i = 1; i <= bilangan; i++) {
    if (bilangan % i == 0) {
      hitung++;
    }
  }
  if (hitung == 2) {
    print("Bilangan $bilangan Adalah Bilangan Prima ");
  } else {
    print("Bilangan $bilangan BUKAN Bilangan Prima ");
  }
}
