
import 'package:portfolio/src/features/contact/data/contact_model.dart';
import 'package:portfolio/src/features/contact/data/contact_repository.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'set_contact_provider.g.dart';
@riverpod
class SetContact extends _$SetContact {
  @override
  FutureOr<void> build() {}

  Future<void> submit(ContactModel contact) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(
      () async {
        await ref.read(contactRepositoryProvider).setContact(contact);
      },
    );
  }
}