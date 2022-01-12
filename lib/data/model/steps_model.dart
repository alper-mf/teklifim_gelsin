class StepsModel {
  int itemID;
  String title;
  String subTitle;

  StepsModel({
    required this.itemID,
    required this.title,
    required this.subTitle,
  });

  static List<StepsModel> getStepList() {
    return <StepsModel>[
      StepsModel(
        itemID: 1,
        title: 'Kredi Tutarını Belirleyin',
        subTitle:
            "İhtiyaç anında TeklifimGelsin yanınızda. Çekmek istediğiniz tutarı girin",
      ),
      StepsModel(
        itemID: 2,
        title: 'Vadenizi Seçin',
        subTitle:
            "İhtiyaç kredinizi kaç ay vade ile ödeyebileceğinizi belirtin",
      ),
      StepsModel(
        itemID: 3,
        title: 'Kredi Tekliflerini Karşılaştırın',
        subTitle:
            "Bankaların size özel kredi tekliflerini karşılaştırın ve başvurun",
      ),
    ];
  }
}
