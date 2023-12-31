
class DataException implements Exception {
  String message;
  DataException([this.message = 'Something went wrong']) {
    message = 'Data Exception: $message';
  }

  @override
  String toString() {
    return message;
  }
} 
