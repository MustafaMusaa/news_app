import 'package:flutter/material.dart';
import 'package:news_app/api/api_manager.dart';
import 'package:news_app/app_utls/app_colors.dart';
import 'package:news_app/ui/home/category_details/source_tab_widget.dart';

class CategoryDetails extends StatefulWidget {
  static const String routeName = 'category_details';

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiManager.getSources(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(
                color: AppColors.black,
              ),);
          }else if (snapshot.hasError){
            return Column(
              children: [
                const Text('Something went wrong'),
                ElevatedButton(
                    onPressed: (){
                      ApiManager.getSources();
                      setState(() {

                      });
                    },
                    child: const Text('Try Again'))
              ],
            );
          }
          if (snapshot.data!.status == 'error'){
            return Column(
              children: [
                Text(snapshot.data!.message!),
                ElevatedButton(
                    onPressed: (){
                      ApiManager.getSources();
                      setState(() {

                      });
                    },
                    child: const Text('Try Again'))
              ],
            );
          }
          var sourceList = snapshot.data!.sources ?? [];
          return SourceTabWidget(sourceList: sourceList);
        });
  }
}
