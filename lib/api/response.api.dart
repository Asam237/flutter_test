class ResponseApi<T> {
  T? data;
  bool? error;
  String? errorMessage;

  ResponseApi({this.data, this.error = false, this.errorMessage});
}
