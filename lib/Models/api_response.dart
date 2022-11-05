class ApiResponse <T>{
  T data;
  bool error;
  String errorMessage;
  int resposeCode;

  ApiResponse({this.data, this.errorMessage,this.resposeCode, this.error = false,});
}
