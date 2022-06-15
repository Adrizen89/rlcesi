import 'package:flutter_test/flutter_test.dart';
import 'package:rlcesi/services/validator.dart';

void main() {

  test('Empty mail', () {
    var result = FieldValidator.validateEmail('');
    expect(result, 'Renseignez une adresse email !');
  });

  test('Invalid mail', () {
    var result = FieldValidator.validateEmail('dzdzdza');
    expect(result, 'Renseignez une adresse email valide !');
  });

  test('Valid mail', () {
    var result = FieldValidator.validateEmail('ressources@relationnelles.com');
    expect(result, '');
  });

  test('Empty name', () {
    var result = FieldValidator.validateName('');
    expect(result, 'Entrez votre nom !');
  });

  test('Empty firstname', () {
    var result = FieldValidator.validateFirstname('');
    expect(result, 'Entrez votre prénom !');
  });
}