class Tarif {
  List<Malzemeler> malzemeler;
  int porsiyon;
  String yemekAdi;
  String yemekResmi;
  Tarif(this.yemekAdi, this.yemekResmi,this.malzemeler,this.porsiyon);
  static List<Tarif> yemekler = [
    Tarif("Lahmacun", "lahmacun.jpg",[ 
      Malzemeler(1,"kilo","et"),
      Malzemeler(4,"tane","soğan"),
      Malzemeler(3,"kaşık","tuz")
    ],1),
    Tarif("Sarma", "sarma.jpg",[ 
      Malzemeler(1,"kilo","et"),
      Malzemeler(2,"bardak","yağ"),
      Malzemeler(5,"kaşık","bulgur")
    ],1),
     Tarif("Çiğ Köfte", "kofte.jpg",[ 
      Malzemeler(1,"kilo","et"),
      Malzemeler(5,"bardak","bulgur"),
      Malzemeler(1,"kaşık","tuz")
    ],1),
    Tarif("Kuru Fasülye","fasulye.jpg",[ 
      Malzemeler(1,"kilo","et"),
      Malzemeler(6,"bardak","fasulye"),
      Malzemeler(1,"kaşık","tuz")
    ],1),
    Tarif("Kebap", "kebap.jpg",[ 
      Malzemeler(4,"kilo","et"),
      Malzemeler(1,"avuç","pul biber"),
      Malzemeler(1,"kaşık","tuz")
    ],1),
  ];
}

class Malzemeler {
  double adet;
  String olcum;
  String isim;
  Malzemeler(this.adet, this.olcum, this.isim);
}
