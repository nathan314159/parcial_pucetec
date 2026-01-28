import 'package:flutter_test/flutter_test.dart';
import 'package:parcial_pucetec/helper.dart';

void main() {
  group('Cedula Ecuatoriana Validator', () {
    
    test('Valid Ecuadorian ID returns true', () {
      const cedulaValida = '1722417332';

      final result = Validators.cedulaEcuatoriana(cedulaValida);

      expect(result, true);
    });

    test('Invalid length returns false', () {
      const cedulaCorta = '123456789';

      final result = Validators.cedulaEcuatoriana(cedulaCorta);

      expect(result, false);
    });

    test('Invalid province code returns false', () {
      const cedulaProvinciaInvalida = '2598765432';

      final result = Validators.cedulaEcuatoriana(cedulaProvinciaInvalida);

      expect(result, false);
    });

    test('Invalid third digit returns false', () {
      const cedulaTercerDigitoInvalido = '0168765432';

      final result = Validators.cedulaEcuatoriana(cedulaTercerDigitoInvalido);

      expect(result, false);
    });

    test('Invalid verification digit returns false', () {
      const cedulaChecksumInvalido = '0102030406';

      final result = Validators.cedulaEcuatoriana(cedulaChecksumInvalido);

      expect(result, false);
    });
  });
}
