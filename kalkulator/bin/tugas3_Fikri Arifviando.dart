import 'Tugas_Kendaraan_Fikri Arifviando.dart';

// Nama : Fikri Arifviando
// UPN "Veteran" Jatim
// Kelompok 1
void main(List<String> args) async {
  kecepatanmobil();
  merekmobil();
  try {
    var hasil = await hargamobil(300);
    print("Hasil await");
    print(hasil);
  } catch (eror) {
    print(eror);
  }

  try {
    var dataorder = await createOrderMassage();
    print(dataorder);
  } catch (eror) {
    print(eror);
  }
}

//futur with delayed
void kecepatanmobil() {
  Future.delayed(Duration(seconds: 1), () {
    print("300 m/s");
  });
}

//future biasa
void merekmobil() {
  Future(() {
    print("Honda");
  });
}

Future<String> hargamobil(int penawaran) {
  int harga = 500;
  return Future.delayed(Duration(seconds: 3), () {
    if (harga < penawaran) {
      return "Harga Terlalu mahal";
    } else {
      throw 'Harga Diminati';
    }
  });
}

Future<String> createOrderMassage() async {
  var order = await fetchUserOrder();
  return "Orderan Anda $order";
}

Future<String> fetchUserOrder() {
  return Future.delayed(Duration(seconds: 4), () {
    return "Terselesaikan";
  });
}
