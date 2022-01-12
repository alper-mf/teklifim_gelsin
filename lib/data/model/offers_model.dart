import 'dart:convert';

OffersModel offersModelFromMap(String str) =>
    OffersModel.fromMap(json.decode(str));

String offersModelToMap(OffersModel data) => json.encode(data.toMap());

class OffersModel {
  OffersModel({
    required this.offers,
    required this.totalOffers,
  });

  List<Offer> offers;
  int totalOffers;

  OffersModel copyWith({
    required List<Offer> offers,
    required int totalOffers,
  }) =>
      OffersModel(
        offers: offers,
        totalOffers: totalOffers,
      );

  factory OffersModel.fromMap(Map<String, dynamic> json) => OffersModel(
        offers: List<Offer>.from(json["offers"].map((x) => Offer.fromMap(x))),
        totalOffers: json["total_offers"],
      );

  Map<String, dynamic> toMap() => {
        "offers": List<dynamic>.from(offers.map((x) => x.toMap())),
        "total_offers": totalOffers,
      };
}

class Offer {
  Offer({
    required this.annualExpenseRate,
    required this.bank,
    required this.bankId,
    required this.rate,
  });

  double annualExpenseRate;
  String bank;
  int bankId;
  double rate;

  Offer copyWith({
    required double annualExpenseRate,
    required String bank,
    required int bankId,
    required double rate,
  }) =>
      Offer(
        annualExpenseRate: annualExpenseRate,
        bank: bank,
        bankId: bankId,
        rate: rate,
      );

  factory Offer.fromMap(Map<String, dynamic> json) => Offer(
        annualExpenseRate: json["annual_expense_rate"].toDouble(),
        bank: json["bank"],
        bankId: json["bank_id"],
        rate: json["rate"].toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "annual_expense_rate": annualExpenseRate,
        "bank": bank,
        "bank_id": bankId,
        "rate": rate,
      };
}
