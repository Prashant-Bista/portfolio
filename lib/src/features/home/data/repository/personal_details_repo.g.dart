// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_details_repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(personalDetailsRepo)
final personalDetailsRepoProvider = PersonalDetailsRepoProvider._();

final class PersonalDetailsRepoProvider
    extends
        $FunctionalProvider<
          PersonalDetailsRepo,
          PersonalDetailsRepo,
          PersonalDetailsRepo
        >
    with $Provider<PersonalDetailsRepo> {
  PersonalDetailsRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'personalDetailsRepoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$personalDetailsRepoHash();

  @$internal
  @override
  $ProviderElement<PersonalDetailsRepo> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PersonalDetailsRepo create(Ref ref) {
    return personalDetailsRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PersonalDetailsRepo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PersonalDetailsRepo>(value),
    );
  }
}

String _$personalDetailsRepoHash() =>
    r'3ebbb1283ad055a07ad48fc21fac9e400167b345';
