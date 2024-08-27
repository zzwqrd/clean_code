lib/
└── src/
├── core/
│   ├── errors/
│   │   └── failures.dart
│   ├── usecases/
│   │   └── usecase.dart
│   ├── utils/
│   │   └── validators.dart
├── features/
│   ├── feature_name/
│   │   ├── data/
│   │   │   ├── models/
│   │   │   │   └── model_name_model.dart
│   │   │   ├── repositories/
│   │   │   │   └── feature_name_repository_impl.dart
│   │   │   ├── datasources/
│   │   │   │   ├── feature_name_remote_data_source.dart
│   │   │   │   └── feature_name_local_data_source.dart
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   │   └── model_name.dart
│   │   │   ├── repositories/
│   │   │   │   └── feature_name_repository.dart
│   │   │   ├── usecases/
│   │   │   │   └── get_model_name.dart
│   │   ├── presentation/
│   │   │   ├── bloc/
│   │   │   │   ├── feature_name_bloc.dart
│   │   │   │   └── feature_name_event.dart
│   │   │   │   └── feature_name_state.dart
│   │   │   ├── pages/
│   │   │   │   └── feature_name_page.dart
│   │   │   └── widgets/
│   │   │       └── feature_name_widget.dart
├── injection_container.dart
└── main.dart
