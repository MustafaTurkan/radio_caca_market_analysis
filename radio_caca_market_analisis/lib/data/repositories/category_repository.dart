import 'package:radio_caca_market_analisis/data/data.dart';
import 'package:radio_caca_market_analisis/domain/domain.dart';

class CategoryRepository extends ICategoryRepository {
  CategoryRepository(this.apiClient);
  ApiProvider apiClient;

  @override
  Future<List<Category>>? getCategories() {
    return null;
  }
}
