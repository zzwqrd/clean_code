import 'package:dartz/dartz.dart';

import '../../../../core/network/server.dart';
import '../../data/models/model_name.dart';

abstract class ProductRepository {
  Future<Either<CustomResponse, ProductModel>> getData();
}
