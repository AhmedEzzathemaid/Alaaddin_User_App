// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'viewhierarchy6_item_model.dart';/// This class defines the variables used in the [onehundredfiftyfour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnehundredfiftyfourModel extends Equatable {OnehundredfiftyfourModel({this.viewhierarchy6ItemList = const []}) {  }

List<Viewhierarchy6ItemModel> viewhierarchy6ItemList;

OnehundredfiftyfourModel copyWith({List<Viewhierarchy6ItemModel>? viewhierarchy6ItemList}) { return OnehundredfiftyfourModel(
viewhierarchy6ItemList : viewhierarchy6ItemList ?? this.viewhierarchy6ItemList,
); } 
@override List<Object?> get props => [viewhierarchy6ItemList];
 }
