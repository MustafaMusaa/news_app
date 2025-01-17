import 'package:flutter/material.dart';
import 'package:news_app/app_utls/app_colors.dart';
import 'package:news_app/ui/home/category_details/category_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../drawer/drawer.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(AppLocalizations.of(context)!.home),
      ),
      body: CategoryDetails(),
    );
  }
}
