import 'dart:io';

void main(List<String> args) {
  print("============================");
  print("SEGITIGA SAMA KAKI FIKRI");
  print("============================");
  for (int i = 1; i <= 6; i++) {
    for (int j = 5; j >= i; j--) {
      stdout.write(" ");
    }
    for (int k = 1; k <= i; k++) {
      stdout.write("*");
    }
    for (int l = 1; l <= i - 1; l++) {
      stdout.write("*");
    }
    print(" ");
  }
}
