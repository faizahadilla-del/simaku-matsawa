// =======================================================
// Validator
// =======================================================

class Validator {
  Validator._();

  static String? required(String? value, String fieldName) {
    if (value == null || value.trim().isEmpty) {
      return "$fieldName wajib diisi";
    }

    return null;
  }

  static String? minLength(
    String? value,
    int length,
  ) {
    if (value == null) return null;

    if (value.length < length) {
      return "Minimal $length karakter";
    }

    return null;
  }

  static String? username(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Username wajib diisi";
    }

    if (value.contains(" ")) {
      return "Username tidak boleh mengandung spasi";
    }

    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return "Password wajib diisi";
    }

    if (value.length < 6) {
      return "Password minimal 6 karakter";
    }

    return null;
  }
}