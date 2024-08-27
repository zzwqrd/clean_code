import 'package:dartz/dartz.dart';

import '../../../../core/network/server.dart';
import '../../data/models/model_name.dart';
import '../../data/repository_impl/repository_impl.dart';

abstract class ProductUseCase {
  Future<Either<CustomResponse, ProductModel>> getData();
}

class ProductUseCaseImp implements ProductUseCase {
  final productRepositoryImp = ProductRepositoryImp();

  @override
  Future<Either<CustomResponse, ProductModel>> getData() async {
    return await productRepositoryImp.getData();
  }
}
