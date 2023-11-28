import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simple_cubit_template/models/custom_error.dart';
import 'package:simple_cubit_template/models/data_model.dart';
///DataCubit
part 'data_state.dart';

class DataCubit extends Cubit<DataState> {
  DataCubit() : super(DataState.initial());
}
