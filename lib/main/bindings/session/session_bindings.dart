import 'package:get/get.dart';
import 'package:tmail_ui_user/features/base/base_bindings.dart';
import 'package:tmail_ui_user/features/login/domain/repository/credential_repository.dart';
import 'package:tmail_ui_user/features/login/domain/usecases/delete_credential_interactor.dart';
import 'package:tmail_ui_user/features/session/data/datasource/session_datasource.dart';
import 'package:tmail_ui_user/features/session/data/datasource_impl/session_datasource_impl.dart';
import 'package:tmail_ui_user/features/session/data/network/session_api.dart';
import 'package:tmail_ui_user/features/session/data/repository/session_repository_impl.dart';
import 'package:tmail_ui_user/features/session/domain/repository/session_repository.dart';
import 'package:tmail_ui_user/features/session/domain/usecases/get_session_interactor.dart';

class SessionBindings extends BaseBindings {

  @override
  void dependencies() {
    super.dependencies();
  }

  @override
  void bindingsController() {
  }

  @override
  void bindingsDataSource() {
    Get.put<SessionDataSource>(Get.find<SessionDataSourceImpl>());
  }

  @override
  void bindingsDataSourceImpl() {
    Get.put(SessionDataSourceImpl(Get.find<SessionAPI>()));
  }

  @override
  void bindingsInteractor() {
    Get.put(GetSessionInteractor(Get.find<SessionRepository>()));
    Get.put(DeleteCredentialInteractor(Get.find<CredentialRepository>()));
  }

  @override
  void bindingsRepository() {
    Get.put<SessionRepository>(Get.find<SessionRepositoryImpl>());
  }

  @override
  void bindingsRepositoryImpl() {
    Get.put(SessionRepositoryImpl(Get.find<SessionDataSource>()));
  }
}