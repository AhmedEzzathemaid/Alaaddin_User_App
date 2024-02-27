// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'fiftyeight_item_model.dart';/// This class defines the variables used in the [fiftyeight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FiftyeightModel extends Equatable {FiftyeightModel({this.fiftyeightItemList = const []}) {  }

List<FiftyeightItemModel> fiftyeightItemList;

FiftyeightModel copyWith({List<FiftyeightItemModel>? fiftyeightItemList}) { return FiftyeightModel(
fiftyeightItemList : fiftyeightItemList ?? this.fiftyeightItemList,
); } 
@override List<Object?> get props => [fiftyeightItemList];
 }
