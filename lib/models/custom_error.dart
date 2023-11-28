import 'package:equatable/equatable.dart';


class CustomError extends Equatable {
  final String errMsg;
  const CustomError({
    /// The empty screen is the default initial value of the error
    this.errMsg = ' ',
  });

  @override
  List<Object> get props => [errMsg];

  @override
  String toString() => 'CustomError(errMsg: $errMsg)';
}
