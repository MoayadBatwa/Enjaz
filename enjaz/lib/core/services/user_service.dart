import 'package:enjaz/core/common/models/user_model/user_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserService {
  UserModel? _user;

  set setUser(UserModel? user) {
    _user = user;
  }

  UserModel? get getUser {
    return _user;
  }

  bool get isLeader {
    return getUser?.role == 'leader';
  }

  bool get isAdmin {
    return getUser?.role == 'admin';
  }

  bool get isStudent {
    return getUser?.role == 'student';
  }

  bool get isSupervisor {
    return getUser?.role == 'supervisor';
  }

  bool get canManageClub {
    return isLeader || isAdmin || isSupervisor;
  }
}
