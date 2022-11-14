// ignore_for_file: public_member_api_docs, sort_constructors_first
class Elonlar {
  String imageUrl;
  String service;
  String time;
  String details;
  String price;
  Elonlar({
    required this.imageUrl,
    required this.service,
    required this.time,
    required this.details,
    required this.price,
  });
}

List<Elonlar> list = [
  Elonlar(
      imageUrl: "assets/elonlar/traktor.jpg",
      service: "Traktor xizmatlari",
      time: "soatiga",
      details:
          "Yer haydash va yerga ishlov berish xizmatlari bilan shug'ullanamiz , Xizmatlar letsienziyaga ega . ",
      price: "500 ming"),
  Elonlar(
      imageUrl: "assets/elonlar/mini_traktor.jpg",
      service: "yer haydash",
      time: "soatiga",
      details: "tomorqa va kichikroq kattalikdagi yerlarni haydab beramiz ",
      price: "80 ming")
];

class Mutaxasis {
  String imageUrl;
  String service;
  String time;
  String details;
  String price;
  Mutaxasis({
    required this.imageUrl,
    required this.service,
    required this.time,
    required this.details,
    required this.price,
  });
}

List<Mutaxasis> mutaxasis = [
  Mutaxasis(
      imageUrl: "assets/elonlar/agranom.jpg",
      service: "Agranom",
      time: "soati ",
      details:
          "agranom xizmati, dalani agranomik qismi o'rganish unga yechim berish",
      price: "300 ming"),
  Mutaxasis(
      imageUrl: "assets/elonlar/irrigator.jpg",
      service: "Irrigator",
      time: "kuniga",
      details:
          "Irrigatorlik  hizmatlari, quyiladigan suv miqdorini o'lchab berish, dalani suvga bo'lgan ehtiyojini hisoblash ",
      price: "500 ming")
];

class Jismoniy {
  String imageUrl;
  String service;
  String time;
  String details;
  String price;
  Jismoniy({
    required this.imageUrl,
    required this.service,
    required this.time,
    required this.details,
    required this.price,
  });
}

List<Jismoniy> jismoniy = [
  Jismoniy(
      imageUrl: "assets/elonlar/ut_urish.jpg",
      service: "O't o'rish",
      time: "qilgan ishiga",
      details:
          "Uy ichida gazon o'rish kerak , 20 so'tixlik maydonda yo'ng'ichqa o'rish kerak",
      price: "150 ming"),
  Jismoniy(
      imageUrl: "assets/elonlar/chopiq.jpg",
      service: "Egatdan o't chopish",
      time: "egatiga",
      details: "Sabzi dalasida egatdan o't yulish",
      price: "20 ming")
];

class Mahsulot {
  String imageUrl;
  String service;
  String time;
  String details;
  String price;
  Mahsulot({
    required this.imageUrl,
    required this.service,
    required this.time,
    required this.details,
    required this.price,
  });
}

List<Mahsulot> mahsulot = [
  Mahsulot(
      imageUrl: "assets/elonlar/kartoshka.jpg",
      service: "Kartoshka",
      time: "Tonnada",
      details: "Kartoshka ulgurji narxda, bozorga tarqatishga",
      price: "3 mln"),
  Mahsulot(
      imageUrl: "assets/elonlar/ammafos.jpg",
      service: "Ammafos",
      time: "kilosi",
      details:
          "Qishloq xo'jaligida ishlatilinadigan ammafos va boshqa o'gitlar",
      price: "3 ming ")
];
