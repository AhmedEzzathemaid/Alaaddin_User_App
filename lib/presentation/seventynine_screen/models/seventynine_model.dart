// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'paymentmethod2_item_model.dart';import 'userprofile7_item_model.dart';/// This class defines the variables used in the [seventynine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeventynineModel extends Equatable {SeventynineModel({this.paymentmethod2ItemList = const [], this.radioList = const [], this.userprofile7ItemList = const [], }) {  }

List<Paymentmethod2ItemModel> paymentmethod2ItemList;

List<String> radioList;

List<Userprofile7ItemModel> userprofile7ItemList;

SeventynineModel copyWith({List<Paymentmethod2ItemModel>? paymentmethod2ItemList, List<String>? radioList, List<Userprofile7ItemModel>? userprofile7ItemList, }) { return SeventynineModel(
paymentmethod2ItemList : paymentmethod2ItemList ?? this.paymentmethod2ItemList,
radioList : radioList ?? this.radioList,
userprofile7ItemList : userprofile7ItemList ?? this.userprofile7ItemList,
); } 
@override List<Object?> get props => [paymentmethod2ItemList,radioList,userprofile7ItemList];
 }
