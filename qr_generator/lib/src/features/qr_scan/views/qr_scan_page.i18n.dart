import 'package:i18n_extension/i18n_extension.dart';

const kQRCodeScanMessage = 'Scan';
const kCancelMessage = 'Scan';

/// This extension method contains all
/// the strings for the QRCodeScan view
extension QRCodeScanStrings on String {
  static final _t = Translations('en_us') +
      {
        'en_us': kQRCodeScanMessage,
        'es_es': 'Escanear',
      } +
      {
        'en_us': kCancelMessage,
        'es_es': 'Cancelar',
      };

  /// Getter to translate the string
  String get i18n => localize(this, _t);

  /// Method for interpolating strings
  String fill(List<Object> params) => localizeFill(this, params);

  /// Method for pluralizing strings
  String plural(int value) => localizePlural(value, this, _t);

  /// Method for creating custom modifiers according to any conditions
  String version(Object modifier) => localizeVersion(modifier, this, _t);

  /// Method for retrieving all the custom modifiers
  Map<String, String> allVersions() => localizeAllVersions(this, _t);
}
