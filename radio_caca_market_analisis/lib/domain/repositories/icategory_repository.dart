import 'package:radio_caca_market_analisis/data/data.dart';

abstract class ICategoryRepository {
  Future<List<Category>>? getCategories();
}
