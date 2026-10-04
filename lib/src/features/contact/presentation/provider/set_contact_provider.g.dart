// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_contact_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SetContact)
final setContactProvider = SetContactProvider._();

final class SetContactProvider
    extends $AsyncNotifierProvider<SetContact, void> {
  SetContactProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'setContactProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$setContactHash();

  @$internal
  @override
  SetContact create() => SetContact();
}

String _$setContactHash() => r'5149ea6320f9b6759c0a3de425d6921eea9c4806';

abstract class _$SetContact extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
