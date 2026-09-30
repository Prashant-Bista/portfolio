// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_info_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(personalDetailsDataSource)
final personalDetailsDataSourceProvider = PersonalDetailsDataSourceProvider._();

final class PersonalDetailsDataSourceProvider
    extends
        $FunctionalProvider<
          PersonalInfoDatasource,
          PersonalInfoDatasource,
          PersonalInfoDatasource
        >
    with $Provider<PersonalInfoDatasource> {
  PersonalDetailsDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'personalDetailsDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$personalDetailsDataSourceHash();

  @$internal
  @override
  $ProviderElement<PersonalInfoDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PersonalInfoDatasource create(Ref ref) {
    return personalDetailsDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PersonalInfoDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PersonalInfoDatasource>(value),
    );
  }
}

String _$personalDetailsDataSourceHash() =>
    r'5681ca36761811d35671783e21c15aeff158126b';
