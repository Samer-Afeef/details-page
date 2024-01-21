class DetailsViewModel {
  int? detailsId;
  String? detailsType;
  int? detailsNumber;
  int? detailsAnnualRent;
  int? detailsNumRooms;
  int? detailsNumLivingRooms;
  int? detailsNumBathrooms;
  int? detailsCarParking;
  double? detailsAddressLong;
  double? detailsAddressLat;
  String? detailsAddressDesc;


  DetailsViewModel(
      {this.detailsId,
        this.detailsType,
        this.detailsNumber,
        this.detailsAnnualRent,
        this.detailsNumRooms,
        this.detailsNumLivingRooms,
        this.detailsNumBathrooms,
        this.detailsCarParking,
        this.detailsAddressLong,
        this.detailsAddressLat,
        this.detailsAddressDesc,
      });

  DetailsViewModel.fromJson(Map<String, dynamic> json) {
    detailsId = json['details_id'];
    detailsType = json['details_type'];
    detailsNumber = json['details_number'];
    detailsAnnualRent = json['details_annual_rent'];
    detailsNumRooms = json['details_num_rooms'];
    detailsNumLivingRooms = json['details_num_living_rooms'];
    detailsNumBathrooms = json['details_num_bathrooms'];
    detailsCarParking = json['details_car_parking'];
    detailsAddressLong = json['details_address_long'];
    detailsAddressLat = json['details_address_lat'];
    detailsAddressDesc = json['details_address_desc'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['details_id'] = detailsId;
    data['details_type'] = detailsType;
    data['details_number'] = detailsNumber;
    data['details_annual_rent'] = detailsAnnualRent;
    data['details_num_rooms'] = detailsNumRooms;
    data['details_num_living_rooms'] = detailsNumLivingRooms;
    data['details_num_bathrooms'] = detailsNumBathrooms;
    data['details_car_parking'] = detailsCarParking;
    data['details_address_long'] = detailsAddressLong;
    data['details_address_lat'] = detailsAddressLat;
    data['details_address_desc'] = detailsAddressDesc;
    return data;
  }
}