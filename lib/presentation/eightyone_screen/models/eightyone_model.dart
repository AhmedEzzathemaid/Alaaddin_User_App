// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'paymentmethodcomponent1_item_model.dart';import 'paymentmethod3_item_model.dart';/// This class defines the variables used in the [eightyone_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EightyoneModel extends Equatable {EightyoneModel({this.paymentmethodcomponent1ItemList = const [], this.paymentmethod3ItemList = const [], }) {  }

List<Paymentmethodcomponent1ItemModel> paymentmethodcomponent1ItemList;

List<Paymentmethod3ItemModel> paymentmethod3ItemList;

EightyoneModel copyWith({List<Paymentmethodcomponent1ItemModel>? paymentmethodcomponent1ItemList, List<Paymentmethod3ItemModel>? paymentmethod3ItemList, }) { return EightyoneModel(
paymentmethodcomponent1ItemList : paymentmethodcomponent1ItemList ?? this.paymentmethodcomponent1ItemList,
paymentmethod3ItemList : paymentmethod3ItemList ?? this.paymentmethod3ItemList,
); } 
@override List<Object?> get props => [paymentmethodcomponent1ItemList,paymentmethod3ItemList];
 }
