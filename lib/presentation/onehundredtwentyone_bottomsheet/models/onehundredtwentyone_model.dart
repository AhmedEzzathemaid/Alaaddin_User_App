// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'onehundredtwentyone_item_model.dart';/// This class defines the variables used in the [onehundredtwentyone_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class OnehundredtwentyoneModel extends Equatable {OnehundredtwentyoneModel({this.onehundredtwentyoneItemList = const []}) {  }

List<OnehundredtwentyoneItemModel> onehundredtwentyoneItemList;

OnehundredtwentyoneModel copyWith({List<OnehundredtwentyoneItemModel>? onehundredtwentyoneItemList}) { return OnehundredtwentyoneModel(
onehundredtwentyoneItemList : onehundredtwentyoneItemList ?? this.onehundredtwentyoneItemList,
); } 
@override List<Object?> get props => [onehundredtwentyoneItemList];
 }
