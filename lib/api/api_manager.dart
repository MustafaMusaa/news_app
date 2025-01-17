import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/api/api_constants.dart';
import 'package:news_app/api/end_points.dart';
import 'package:news_app/model/SourceResponse.dart';
import 'package:news_app/model/newsResponse.dart';

class ApiManager {

   static Future<SourceResponse?> getSources()async{
     Uri url = Uri.https(ApiConstants.baseUrl, EndPoints.sourceApi,
       {
         'apiKey' : ApiConstants.apiKey
       });
     try{
       var response = await http.get(url);
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
       var response = await http.get(url);
       return NewsResponse.fromJson(jsonDecode(response.body));
     }catch (e){
       throw e;
     }
   }

}