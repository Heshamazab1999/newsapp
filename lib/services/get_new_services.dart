import 'package:dio/dio.dart';
import 'package:newsapp/constants.dart';
import 'package:newsapp/model/new_model.dart';

class GetArticleServices {
  final Dio _dio = Dio();

  getArticles() async {
    try {
      Response response = await _dio.get(K.api + K.key);
      if (response.statusCode == 200) {
        print(response.data);
        return NewsModel.fromJson(response.data);
      }
    } catch (e) {
      print(e);
    }
  }
}
