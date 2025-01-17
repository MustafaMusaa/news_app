import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news_app/ui/home/category_details/category_fragment.dart';
import '../drawer/drawer.dart';
import 'category_details/category_details.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.search),)
        ],
        title: Text(
          AppLocalizations.of(context)!.home,
        ),
      ),
      body: CategoryFragment(),
      //CategoryDetails(),
    );
  }
}
