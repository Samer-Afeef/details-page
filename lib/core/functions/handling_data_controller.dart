import '../class/status_request.dart';

handlingData(response) {
  if (response is StatusRequest) {
    return response;
  }
  else if(response['status'] == "success"){
    return StatusRequest.success;
  }
  else if(response['status'] == "failure"){
    return StatusRequest.failure;
  }
}
