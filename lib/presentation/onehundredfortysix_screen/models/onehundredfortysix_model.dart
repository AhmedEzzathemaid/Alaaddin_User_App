// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'storeinfo7_item_model.dart';/// This class defines the variables used in the [onehundredfortysix_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnehundredfortysixModel extends Equatable {OnehundredfortysixModel({this.storeinfo7ItemList = const []}) {  }

List<Storeinfo7ItemModel> storeinfo7ItemList;

OnehundredfortysixModel copyWith({List<Storeinfo7ItemModel>? storeinfo7ItemList}) { return OnehundredfortysixModel(
storeinfo7ItemList : storeinfo7ItemList ?? this.storeinfo7ItemList,
); } 
@override List<Object?> get props => [storeinfo7ItemList];
 }
