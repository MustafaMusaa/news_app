import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/api/api_constants.dart';
import 'package:news_app/api/end_points.dart';
import 'package:news_app/model/SourceResponse.dart';

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
}