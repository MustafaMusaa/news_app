import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:news_app/app_utls/app_colors.dart';
import 'package:news_app/app_utls/app_styles.dart';

import '../../../model/CategoryModel.dart';

class CategoryFragment extends StatefulWidget {
  Function onViewAllClicked;
  CategoryFragment({required this.onViewAllClicked});

  @override
  State<CategoryFragment> createState() => _CategoryFragmentState();
}

class _CategoryFragmentState extends State<CategoryFragment> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var categoriesList = CategoryModel.getCategoriesList(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.hello,
            style: AppStyle.black20w500,
          ),
          Text(
            AppLocalizations.of(context)!.hereIsSomeNewsForYou,
            style: AppStyle.black20w500,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                if(index%2==0){

                }
                return Container(
                  padding: EdgeInsets.all(8),
                  alignment: index%2==0?
                  Alignment.centerRight
                  :Alignment.centerLeft,
                  margin: EdgeInsets.all(5),
                  height: height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(width: 2, color: AppColors.gray),
                    image: DecorationImage(
                        image: AssetImage(
                          categoriesList[index].imagePath,
                        ),
                        fit: BoxFit.fill),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        categoriesList[index].title,
                        style: AppStyle.white24bold,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                            padding: WidgetStatePropertyAll(EdgeInsets.all(0)),
                            shape: WidgetStatePropertyAll(StadiumBorder()),
                            backgroundColor:
                                WidgetStateProperty.all(Colors.grey),
                            fixedSize: WidgetStateProperty.all(Size(width*0.4, height*0.05)),
                          ),
                          onPressed: () {
                            widget.onViewAllClicked(categoriesList[index!]);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: width*0.01,),
                              Text(
                                AppLocalizations.of(context)!.viewAll,
                                style: AppStyle.black20w500,
                              ),
                              CircleAvatar(
                                radius: 23,
                                backgroundColor: AppColors.white,
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: AppColors.black,
                                  size: 30,
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                );
              },
              itemCount: categoriesList.length,
            ),
          )
        ],
      ),
    );
  }
}
