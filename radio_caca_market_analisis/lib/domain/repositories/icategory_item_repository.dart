import 'package:radio_caca_market_analisis/data/data.dart';

abstract class ICategoryItemRepository {
  Future<List<CategoryItem>> getCategoryItems(int id, int page, int pageSize);
}
