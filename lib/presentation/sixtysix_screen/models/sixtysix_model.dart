// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'viewhierarchy1_item_model.dart';import 'userprofile3_item_model.dart';/// This class defines the variables used in the [sixtysix_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SixtysixModel extends Equatable {SixtysixModel({this.viewhierarchy1ItemList = const [], this.userprofile3ItemList = const [], }) {  }

List<Viewhierarchy1ItemModel> viewhierarchy1ItemList;

List<Userprofile3ItemModel> userprofile3ItemList;

SixtysixModel copyWith({List<Viewhierarchy1ItemModel>? viewhierarchy1ItemList, List<Userprofile3ItemModel>? userprofile3ItemList, }) { return SixtysixModel(
viewhierarchy1ItemList : viewhierarchy1ItemList ?? this.viewhierarchy1ItemList,
userprofile3ItemList : userprofile3ItemList ?? this.userprofile3ItemList,
); } 
@override List<Object?> get props => [viewhierarchy1ItemList,userprofile3ItemList];
 }
