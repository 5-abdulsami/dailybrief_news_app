import 'package:dailybrief_news_app/models/categories_model.dart';
import 'package:dailybrief_news_app/models/headlines_model.dart';
import 'package:dailybrief_news_app/repositories/news_repository.dart';

class NewsViewModel {
  final _repo = NewsRepository();

  Future<HeadlinesModel> fetchHeadlinesAPI(String channelName) async {
    final response = await _repo.fetchHeadlinesAPI(channelName);
    return response;
  }

  Future<CategoriesModel> fetchCategoriesAPI(String category) async {
    final response = await _repo.fetchCategoriesAPI(category);
    return response;
  }
}
