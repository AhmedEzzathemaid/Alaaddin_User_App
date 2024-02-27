// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'paymentmethodcomponent_item_model.dart';import 'userprofile8_item_model.dart';/// This class defines the variables used in the [eighty_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EightyModel extends Equatable {EightyModel({this.paymentmethodcomponentItemList = const [], this.userprofile8ItemList = const [], this.radioList = const [], }) {  }

List<PaymentmethodcomponentItemModel> paymentmethodcomponentItemList;

List<Userprofile8ItemModel> userprofile8ItemList;

List<String> radioList;

EightyModel copyWith({List<PaymentmethodcomponentItemModel>? paymentmethodcomponentItemList, List<Userprofile8ItemModel>? userprofile8ItemList, List<String>? radioList, }) { return EightyModel(
paymentmethodcomponentItemList : paymentmethodcomponentItemList ?? this.paymentmethodcomponentItemList,
userprofile8ItemList : userprofile8ItemList ?? this.userprofile8ItemList,
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [paymentmethodcomponentItemList,userprofile8ItemList,radioList];
 }
