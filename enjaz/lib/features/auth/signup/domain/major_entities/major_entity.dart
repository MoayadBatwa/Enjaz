import 'package:equatable/equatable.dart';

class MajorEntity extends Equatable {
  final String id;
  final String name;

  const MajorEntity({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [name, id];
}
