class Tarif {
  String yemekAdi;
  String yemekResmi;
  Tarif(this.yemekAdi, this.yemekResmi);
   static List<Tarif> yemekler = [
     Tarif("Lahmacun","lahmacun.jpg"),
     Tarif("Sarma","sarma.jpg"),
     Tarif("Çiğ Köfte","kofte.jpg"),
     Tarif("Kuru Fasülye","fasulye.jpg"),
     Tarif("Kebap","kebap.jpg"),
  ];
}
