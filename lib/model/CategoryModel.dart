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
          imagePath: AssetsManager.general_light),
      CategoryModel(
          id: 'business',
          title: AppLocalizations.of(context)!.business,
          imagePath: AssetsManager.business_light),
      CategoryModel(
          id: 'sports', title: AppLocalizations.of(context)!.sports, imagePath: AssetsManager.sport_light),
      CategoryModel(
          id: 'technology',
          title: AppLocalizations.of(context)!.technology,
          imagePath: AssetsManager.technology_light),
      CategoryModel(
          id: 'science',
          title: AppLocalizations.of(context)!.science,
          imagePath: AssetsManager.science_light),
      CategoryModel(
          id: 'health', title: AppLocalizations.of(context)!.health, imagePath: AssetsManager.health_light),
      CategoryModel(
          id: 'entertainment',
          title: AppLocalizations.of(context)!.entertainment,
          imagePath: AssetsManager.entertainment_light),


    ];
  }
}
