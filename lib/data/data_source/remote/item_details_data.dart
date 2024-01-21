import '../../../core/class/crud.dart';
import '../../../core/constant/api_links.dart';

class ItemDetailsData{

  final Crud crud;
  ItemDetailsData({required this.crud});

  view()async{
    var response = await crud.postData(ApiLinks.detailsView, {});
    return response.fold((l) => l, (r) => r);
  }
}