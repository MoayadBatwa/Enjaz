// validators.dart
class Validators {
  Validators._();

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'البريد الإلكتروني مطلوب';
    }
    final emailRegex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );

    if (!emailRegex.hasMatch(value)) {
      return 'البريد الإلكتروني غير صحيح';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'كلمة المرور مطلوبة';
    }
    if (value.length < 8) {
      return 'يجب ان تكون كلمة المرور على الأقل 8 حروف';
    }
    return null;
  }

  static String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'رقم الهاتف مطلوب';
    }
    final phoneRegex = RegExp(r'^(00966|\+966|0)?5[0-9]{8}$');
    if (!phoneRegex.hasMatch(value)) {
      return 'رقم الهاتف غير صحيح';
    }
    return null;
  }

  static String? validateRequired(String? value, {String? fieldName}) {
    if (value == null || value.isEmpty) {
      return '${fieldName ?? 'هذا الحقل'} مطلوب';
    }
    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'الاسم مطلوب';
    }
    if (value.length < 3) {
      return 'يجب ان يكون الاسم على الاقل 3 حروف';
    }
    return null;
  }

  static String? validateOtp(String? value) {
    if (value == null || value.isEmpty) {
      return 'رمز التحقق مطلوب';
    }
    if (value.length < 6) {
      return 'رمز التحقق غير مكتمل';
    }
    return null;
  }

  static String? validateMinLength(String? value, int minLength) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    if (value.length < minLength) {
      return 'Must be at least $minLength characters';
    }
    return null;
  }

  static String? validateGender(String? value) {
    if (value == null || value.isEmpty) {
      return 'الرجاء اختيار الجنس';
    }
    return null;
  }

  static String? validateUniversity(String? value) {
    if (value == null || value.isEmpty) {
      return 'الرجاء اختيار الجامعة';
    }
    return null;
  }

  static String? validateMajor(String? value) {
    if (value == null || value.isEmpty) {
      return 'الرجاء اختيار التخصص';
    }
    return null;
  }
}
