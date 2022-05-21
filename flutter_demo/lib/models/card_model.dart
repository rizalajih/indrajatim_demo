class CardModel {
  String user;
  String cardNumber;
  String cardExpired;
  String cardType;
  int cardBackground;
  String cardElementTop;
  String cardElementBottom;

  CardModel(
    this.user,
    this.cardNumber,
    this.cardExpired,
    this.cardType,
    this.cardBackground,
    this.cardElementTop,
    this.cardElementBottom,
  );
}

List<CardModel> cards = cardData
    .map((item) => CardModel(
          item['user'],
          item['cardNumber'],
          item['cardExpired'],
          item['cardType'],
          item['cardBackground'],
          item['cardElementTop'],
          item['cardElementBottom'],
        ))
    .toList();

var cardData = [
  {
    "user": "Amanda Alex",
    "cardNumber": "**** **** **** 1425",
    "cardExpired": "31-03-2023",
    "cardType": "assets/images/mastercard_logo.png",
    "cardBackground": 0xFF1E1E99,
    "cardElementTop": "assets/svg/ellipse_top.png",
    "cardElementBottom": "assets/svg/ellipse_bottom.png",
  },
  {
    "user": "Amanda Alex",
    "cardNumber": "**** **** **** 1425",
    "cardExpired": "31-03-2023",
    "cardType": "assets/images/mastercard_logo.png",
    "cardBackground": 0xFFFF70A3,
    "cardElementTop": "assets/svg/ellipseblue_top.png",
    "cardElementBottom": "assets/svg/ellipseblue_bottom.png",
  }
];
