import 'enum_models.dart';

class Localization {
  static Localization _instance = new Localization.internal();

  Localization.internal();

  factory Localization() => _instance;

  LocalizationCode localizationCode =LocalizationCode.en ;
  Map localizationMap = localizationMapEn;
  Map citiesList = citiesListEn;
}
