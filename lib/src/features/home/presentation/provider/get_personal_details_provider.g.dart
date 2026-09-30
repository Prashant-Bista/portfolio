// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_personal_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getPersonalDetails)
final getPersonalDetailsProvider = GetPersonalDetailsProvider._();

final class GetPersonalDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<PersonalInfoModel>,
          PersonalInfoModel,
          FutureOr<PersonalInfoModel>
        >
    with
        $FutureModifier<PersonalInfoModel>,
        $FutureProvider<PersonalInfoModel> {
  GetPersonalDetailsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPersonalDetailsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPersonalDetailsHash();

  @$internal
  @override
  $FutureProviderElement<PersonalInfoModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PersonalInfoModel> create(Ref ref) {
    return getPersonalDetails(ref);
  }
}

String _$getPersonalDetailsHash() =>
    r'c46f3690c84cf34f4637d9c20fb382167a4a68ce';
