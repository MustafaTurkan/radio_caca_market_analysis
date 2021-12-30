import 'package:radio_caca_market_analisis/data/data.dart';
import 'package:radio_caca_market_analisis/domain/repositories/icategory_item_repository.dart';

class CategoryItemRepository extends ICategoryItemRepository {
  CategoryItemRepository(this.apiClient);
  ApiProvider apiClient;

  @override
  Future<List<CategoryItem>> getCategoryItems(int id, int page, int pageSize) {
    throw UnimplementedError();
  }
}
