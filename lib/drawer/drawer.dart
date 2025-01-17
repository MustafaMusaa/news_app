import 'package:flutter/material.dart';
import 'package:news_app/app_utls/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news_app/app_utls/app_styles.dart';
import 'package:news_app/drawer/theme_sheet.dart';
import 'package:provider/provider.dart';

import '../provider/language_provider.dart';
import '../provider/theme_provider.dart';
import 'language_sheet.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var languageProvider = Provider.of<AppLanguageProvider>(context);
    var themeProvider = Provider.of<AppThemeProvider>(context);


    void showLanguageBottomSheet() {
      showModalBottomSheet(
          context: context, builder: (context) => LanguageBottomSheet());
    }

    void showThemeBottomSheet() {
      showModalBottomSheet(
          context: context, builder: (context) => ThemeBottomSheet());
    }
    return Drawer(
      backgroundColor: AppColors.black,
      width: width*0.7,
      child: Column(
        children: [
          Container(
            color: AppColors.white,
            height: height*0.23,
            child: Center(
                child:
                Text(AppLocalizations.of(context)!.newsApp,
                  style: AppStyle.black20w500,)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:height* 0.02,),
                InkWell(
                  onTap: (){
                    // navigate to home
                  },
                  child:
                  Row(
                    children: [
                      SizedBox(width:width *0.01,),
                      Icon(Icons.home_filled,color: AppColors.white,),
                      SizedBox(width:width *0.01,),
                      Text(AppLocalizations.of(context)!.goToHome,style: AppStyle.white20medium,)],
                  ),
                ),
                SizedBox(height:height* 0.02,),
                Divider(color: AppColors.white,thickness: 1,indent: width*0.02,endIndent: width*0.05,),
                SizedBox(height:height* 0.02,),
                Row(
                  children: [
                    SizedBox(width:width *0.01,),

                    Icon(Icons.format_paint,color: AppColors.white,),
                    SizedBox(width:width *0.01,),
                    Text(AppLocalizations.of(context)!.theme,style: AppStyle.white20medium,)
                  ],
                ),
                SizedBox(height:height* 0.02,),
                InkWell(
                  onTap: () {
                    showThemeBottomSheet();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            color: AppColors.white, width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            themeProvider.appTheme == ThemeMode.dark
                                ? AppLocalizations.of(context)!.dark
                                : AppLocalizations.of(context)!.light,
                            style: AppStyle.black20w500
                                .copyWith(color: AppColors.white)),
                        const Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.white,
                          size: 35,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height:height* 0.02,),
                Divider(color: AppColors.white,thickness: 1,indent: width*0.02,endIndent: width*0.05,),
                Row(
                  children: [
                    SizedBox(width:width *0.01,),

                    Icon(Icons.sports_basketball_outlined,color: AppColors.white,),
                    SizedBox(width:width *0.01,),
                    Text(AppLocalizations.of(context)!.language,style: AppStyle.white20medium,)
                  ],
                ),
                SizedBox(height:height* 0.02,),
                InkWell(
                  onTap: () {
                    showLanguageBottomSheet();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            color: AppColors.white, width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            languageProvider.appLanguage == 'en'
                                ? AppLocalizations.of(context)!.english
                                : AppLocalizations.of(context)!.arabic,
                            style: AppStyle.black20w500
                                .copyWith(color: AppColors.white)),
                        const Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.white,
                          size: 35,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )

        ],
      ),
    );

  }

}
