import 'package:virtual_mask/viewmodel/base_viewmodel.dart';
import 'package:virtual_mask/viewmodel/viewmodel.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


/// this product view model provides a reusable sets of method to fetch list of product from apis

mixin ViewModelMixin implements BaseViewModel {

  /// A controller control header and footer state,
  /// it  can trigger  driving request Refresh ,set the initialRefresh,status if needed
  RefreshController refreshController = RefreshController(); //to control swipe to refresh and lazy load

}