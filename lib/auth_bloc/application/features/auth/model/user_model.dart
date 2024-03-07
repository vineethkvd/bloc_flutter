import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String? id;
  final String? email;
  final String? displayName;
  UserModel({ this.id, this.email, this.displayName, });

  @override
  // TODO: implement props
  List<Object?> get props =>[this.id,this.email,this.displayName];
}