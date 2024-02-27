// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [s10_item_widget] screen.
class S10ItemModel extends Equatable {S10ItemModel({this.s, this.isSelected, }) { s = s  ?? "S";isSelected = isSelected  ?? false; }

String? s;

bool? isSelected;

S10ItemModel copyWith({String? s, bool? isSelected, }) { return S10ItemModel(
s : s ?? this.s,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [s,isSelected];
 }
