import 'package:flutter_movie/product/init/config/index.dart';
import 'package:flutter_movie/product/model/movies_api_model.dart';
import 'package:flutter_movie/product/service/manager/product_service_manager.dart';
import 'package:flutter_movie/product/service/manager/product_service_path.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vexana/vexana.dart';

void main() {
  late final ProductNetworkManager manager;
  setUp(() {
    AppEnvironment.general();
    manager = ProductNetworkManager.base();
  });
    test('get users item from api', () async {
    final response = await manager.send<Movie, List<Movie>>(
      ProductServicePath.popular.value,
      parseModel: Movie(),
      method: RequestType.GET,
    );
    expect(response.data, isNotNull);
  });
}
