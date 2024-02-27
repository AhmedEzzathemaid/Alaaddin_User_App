// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [s6_item_widget] screen.
class S6ItemModel extends Equatable {S6ItemModel({this.s, this.isSelected, }) { s = s  ?? "S";isSelected = isSelected  ?? false; }

String? s;

bool? isSelected;

S6ItemModel copyWith({String? s, bool? isSelected, }) { return S6ItemModel(
s : s ?? this.s,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [s,isSelected];
 }
