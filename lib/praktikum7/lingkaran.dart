class Lingkaran {
  double jariJari = 0; 

  Lingkaran(this.jariJari);

  double luasLingkaran() {
    return 3.14159 * jariJari * jariJari; 
  }

  double kelilingLingkaran() {
    return 2 * 3.14159 * jariJari; 
  }
}

