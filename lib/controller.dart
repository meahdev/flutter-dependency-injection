
import 'package:injectable/injectable.dart';

import 'icounter_repo.dart';

///Injectable class
@injectable
class YourControllerClass {
  final ICounterRepo iCounterRepo;

  YourControllerClass(this.iCounterRepo);

  Future<void> getData() async {
    iCounterRepo.getData();
  }
}
