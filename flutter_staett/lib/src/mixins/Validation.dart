class Validation {
  validatePanjang(String value) {
    if (value.isEmpty) {
      return "Panjang tidak boleh kosong";
    }
    return null;
  }

  validateLebar(String value) {
    if (value.isEmpty) {
      return "Lebar tidak boleh kosong";
    }
    return null;
  }
}
