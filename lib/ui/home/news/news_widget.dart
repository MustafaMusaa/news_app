import 'package:flutter/material.dart';
import 'package:news_app/api/api_manager.dart';
import 'package:news_app/model/newsResponse.dart';

import '../../../app_utls/app_colors.dart';
import '../../../model/SourceResponse.dart';

class NewsWidget extends StatefulWidget {
  Source source;
  NewsWidget({
    required this.source
});

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse>(
        future: ApiManager.getNewsBySourceId(widget.source.id??""),
        builder: (context, snapshot){
          if ( snapshot.connectionState== ConnectionState.waiting){
            return Center(
                child: CircularProgressIndicator(
                color: AppColors.black),);
          }
          else if (snapshot.hasError){
            return Center(
              child: Column(
                children: [
                  const Text('Something went wrong'),
                  ElevatedButton(
                      onPressed: (){
                        ApiManager.getNewsBySourceId(widget.source.id??"");
                        setState(() {

                        });
                      },
                      child: const Text('Try Again'))
                ],
              ),
            );
          }
          if (snapshot.data!.status != 'ok'){
            return Center(
              child: Column(
                children: [
                  Text(snapshot.data!.message!),
                  ElevatedButton(
                      onPressed: (){
                        ApiManager.getNewsBySourceId(widget.source.id??"");
                        setState(() {

                        });
                      },
                      child: const Text('Try Again'))
                ],
              ),
            );
          }
          var newsList = snapshot.data!.articles!;
          return ListView.builder(itemBuilder: (context, index){
            return Text(newsList[index].title??"");
          },
          itemCount: newsList.length,);
        }
    );
  }
}
