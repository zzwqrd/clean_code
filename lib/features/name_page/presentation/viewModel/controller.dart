import 'package:bloc/bloc.dart';

import '../../../../core/utils/helpers/dialog/showErrorDialogue.dart';
import '../../data/models/model_name.dart';
import '../../domain/usecases/usecase_name.dart';
import 'state.dart';

class DataCubit extends Cubit<DataState<ProductModel>> {
  DataCubit() : super(DataState.empty());

  void getData() async {
    emit(DataState.loading());
    final res = await ProductUseCaseImp().getData();

    res.fold((l) {
      showErrorDialogue(l.message);
      emit(DataState.failure(l.message));
    }, (r) {
      if (r.data!.section.isEmpty) {
        emit(DataState.failure(r.message));
      } else {
        emit(DataState.success(r));
      }
    });
  }
}
