import 'package:flutter/cupertino.dart';
import 'package:news_app/app_utls/assets_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CategoryModel {
  String id;
  String title;
  String imagePath;

  CategoryModel({
    required this.id,
    required this.title,
    required this.imagePath,
  });

  static List<CategoryModel> getCategoriesList(BuildContext context) {
    return [
      CategoryModel(
          id: 'general',
          title: AppLocalizations.of(context)!.general,
          imagePath: AssetsManager.general_dark),
      CategoryModel(
          id: 'business',
          title: AppLocalizations.of(context)!.business,
          imagePath: AssetsManager.business_dark),
      CategoryModel(
          id: 'sports',
          title: AppLocalizations.of(context)!.sports,
          imagePath: AssetsManager.sport_dark),
      CategoryModel(
          id: 'technology',
          title: AppLocalizations.of(context)!.technology,
          imagePath: AssetsManager.technology_dark),
      CategoryModel(
          id: 'science',
          title: AppLocalizations.of(context)!.science,
          imagePath: AssetsManager.science_dark),
      CategoryModel(
          id: 'health',
          title: AppLocalizations.of(context)!.health,
          imagePath: AssetsManager.health_dark),
      CategoryModel(
          id: 'entertainment',
          title: AppLocalizations.of(context)!.entertainment,
          imagePath: AssetsManager.entertainment_dark),
    ];
  }
}
