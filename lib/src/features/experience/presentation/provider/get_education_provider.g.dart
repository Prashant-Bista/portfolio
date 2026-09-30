// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_education_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getEducation)
final getEducationProvider = GetEducationProvider._();

final class GetEducationProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<EducationModel>>,
          List<EducationModel>,
          FutureOr<List<EducationModel>>
        >
    with
        $FutureModifier<List<EducationModel>>,
        $FutureProvider<List<EducationModel>> {
  GetEducationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getEducationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getEducationHash();

  @$internal
  @override
  $FutureProviderElement<List<EducationModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<EducationModel>> create(Ref ref) {
    return getEducation(ref);
  }
}

String _$getEducationHash() => r'a24a8e4950701c2dad4c0ef0f79a80d3ff52b41a';
