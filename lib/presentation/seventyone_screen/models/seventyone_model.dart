// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile4_item_model.dart';/// This class defines the variables used in the [seventyone_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeventyoneModel extends Equatable {SeventyoneModel({this.userprofile4ItemList = const []}) {  }

List<Userprofile4ItemModel> userprofile4ItemList;

SeventyoneModel copyWith({List<Userprofile4ItemModel>? userprofile4ItemList}) { return SeventyoneModel(
userprofile4ItemList : userprofile4ItemList ?? this.userprofile4ItemList,
); } 
@override List<Object?> get props => [userprofile4ItemList];
 }
