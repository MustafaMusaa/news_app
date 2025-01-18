import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as https;
import 'package:news_app/api/api_constants.dart';
import 'package:news_app/api/end_points.dart';
import 'package:news_app/model/SourceResponse.dart';
import 'package:news_app/model/newsResponse.dart';

class ApiManager {

   static Future<SourceResponse?> getSources(String categoryId)async{

     Uri url = Uri.https(ApiConstants.baseUrl, EndPoints.sourceApi,
       {
         'apiKey' : ApiConstants.apiKey,
         'category' : categoryId,
       });
     try{
       var response = await https.get(url);
       return SourceResponse.fromJson(jsonDecode(response.body));
     }catch (e){
       throw e;
     }

   }

 //newsapi.org/v2/everything?q=bitcoin&apiKey=dd22b31089204d69afcdba36302a389b
   static Future<NewsResponse> getNewsBySourceId (String sourceId) async {
     Uri url = Uri.https(ApiConstants.baseUrl, EndPoints.newsApi,{
       'apiKey' : ApiConstants.apiKey,
       'sources' : sourceId,
     } );
     try{
       var response = await https.get(url);
       return NewsResponse.fromJson(jsonDecode(response.body));
     }catch (e){
       throw e;
     }
   }

}