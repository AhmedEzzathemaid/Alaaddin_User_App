// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'promotion_item_model.dart';/// This class defines the variables used in the [onehundredfortythree_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnehundredfortythreeModel extends Equatable {OnehundredfortythreeModel({this.promotionItemList = const []}) {  }

List<PromotionItemModel> promotionItemList;

OnehundredfortythreeModel copyWith({List<PromotionItemModel>? promotionItemList}) { return OnehundredfortythreeModel(
promotionItemList : promotionItemList ?? this.promotionItemList,
); } 
@override List<Object?> get props => [promotionItemList];
 }
