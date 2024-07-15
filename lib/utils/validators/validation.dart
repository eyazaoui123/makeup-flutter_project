class TValidator {
  static String? ValidateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'email is required';
    }

    //regular expression for email validation

    final emailRegExp = RegExp(r'^[\x-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'invalid email adress';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'password is required';
    }

    //check the minimum password length
    if (value.length < 6) {
      return 'password must be at least 6 characters long';
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'password must contain at least one uppercase letter';
    }

    //check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'password must contain at least one number';
    }

    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'password must contain at least one specific character';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'phone number is required';
    }

    //check the minimum password length
    if (value.length < 6) {
      return 'password must be at least 6 characters long';
    }

//regular expression for phone number validation (assuming a 8-digits US phone number format)
    final phoneRegExp = RegExp(r'^\d{8}$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'invalid phone number format(8 digits required)';
    }

    return null;
  }
}
