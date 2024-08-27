import 'package:dartz/dartz.dart';

import '../../../../../core/network/server.dart';
import '../../models/model_name.dart';

class RemoteDataSource {
  Future<Either<CustomResponse, ProductModel>> getProducts() async {
    CustomResponse response = await ServerGate.i.getFromServer(
      url: 'home/index',
    );

    if (response.success) {
      ProductModel model = ProductModel.fromJson(response.response!.data);
      return Right(model);
    } else {
      return Left(
        response,
        // CustomResponse(
        //   success: false,
        //   statusCode: response.statusCode,
        //   errType: response.errType,
        //   message: 'dddd',
        //   response: response.response!,
        // ),
      );
    }
  }
}
