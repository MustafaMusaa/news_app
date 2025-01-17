import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/app_utls/app_styles.dart';

import '../../../app_utls/app_colors.dart';
import '../../../model/newsResponse.dart';

class NewsItem extends StatelessWidget {
  News news;
  NewsItem({
    required this.news
});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(

      padding: EdgeInsets.symmetric(
        vertical: height *0.02,
        horizontal: width*0.02
      ),
      margin:  EdgeInsets.symmetric(
          vertical: height *0.02,
          horizontal: width*0.02
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Theme.of(context).indicatorColor,
          width: 2,
        )
      ),
      child: Column(
        children: [
          ClipRRect(

            borderRadius: BorderRadius.circular(16),
            child:
            /*Image.network(

              "${news.urlToImage}"??" "
              ,fit: BoxFit.cover,),*/
            CachedNetworkImage(
              imageUrl: news.urlToImage??"",
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(child: CircularProgressIndicator(
                    color: AppColors.gray,
                      value: downloadProgress.progress)),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          SizedBox(height: height*0.02,),
          Text(news.title??'', style: AppStyle.black16medium,),
          SizedBox(height: height*0.02,),
          Row(

            mainAxisAlignment:  MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text(news.author??" ", style: AppStyle.black16medium)),
              Text(news.publishedAt??"", style: AppStyle.black16medium)
            ],
          )
        ],
      ),
    );
  }
}
