String? validateUsername(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your username';
  }
  return null;
}

String? validatePassword(dynamic? value) {
  if (value == null || value.isEmpty) {
    return "Please enter your password";
  } else {
    return null;
  }
}
