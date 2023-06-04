import 'lingkaran.dart';

class Silinder extends Lingkaran {
  double tinggi = 0;

  Silinder(this.tinggi, double jariJari) : super(jariJari);

  double luasPermukaanTabung() {
    return 2 * luasLingkaran() + kelilingLingkaran() * tinggi;
  }

  double luasSelimuttabung() {
    return kelilingLingkaran() * tinggi;
  }

  double isiTabung() {
    return luasLingkaran() * tinggi;
  }
}
