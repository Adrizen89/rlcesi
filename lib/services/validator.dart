class FieldValidator {
  static String validateEmail(value) {
    if (value.isEmpty) return 'Renseignez une adresse email !' ;

    RegExp regex = new RegExp(r'\S+@\S+\.\S+');

    if (!regex.hasMatch(value)) {
      return 'Renseignez une adresse email valide !';
    }

    return '';
  }
   static String validatePassword(value) {
    if (value.isEmpty) return 'Renseignez votre mot de passe !';

    RegExp regexpassword = new RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[-+!*$@%_])([-+!*$@%_\w]{8,15})$');

    if (!regexpassword.hasMatch(value)) {
      return 'Votre mot de passe ne respecte la politique de mot de passe !';
    }

    return '';
  }

  static String validateName(value) {
    if (value.isEmpty) return 'Entrez votre nom !';

    return '';
  }

  static String validateFirstname(value) {
    if (value.isEmpty) return 'Entrez votre prénom !';

    return '';
  }

}