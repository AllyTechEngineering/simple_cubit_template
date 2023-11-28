/// DataState
part of 'data_cubit.dart';

/// Use enum instead of four seperate classes
enum DataStatus {
  inital,
  loading,
  loaded,
  error,
}

class DataState extends Equatable {
  final DataStatus dataStatus;
  final DataModel dataModel;
  final CustomError customError;
  const DataState({
    required this.dataStatus,
    required this.dataModel,
    required this.customError,
  });

  factory DataState.initial() {
    return DataState(
      // from enum DataStatus
      dataStatus: DataStatus.inital,
      // from data_model
      dataModel: DataModel.initial(),
      // from custom_error
      customError: const CustomError(),
    );
  }

  @override
  List<Object> get props => [dataStatus, dataModel, customError];

  @override
  String toString() =>
      'DataState(dataStatus: $dataStatus, dataModel: $dataModel, customError: $customError)';

  DataState copyWith({
    DataStatus? dataStatus,
    DataModel? dataModel,
    CustomError? customError,
  }) {
    return DataState(
      dataStatus: dataStatus ?? this.dataStatus,
      dataModel: dataModel ?? this.dataModel,
      customError: customError ?? this.customError,
    );
  }
}
