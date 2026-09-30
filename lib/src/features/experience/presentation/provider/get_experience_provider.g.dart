// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_experience_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getExperience)
final getExperienceProvider = GetExperienceProvider._();

final class GetExperienceProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ExperienceModel>>,
          List<ExperienceModel>,
          FutureOr<List<ExperienceModel>>
        >
    with
        $FutureModifier<List<ExperienceModel>>,
        $FutureProvider<List<ExperienceModel>> {
  GetExperienceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getExperienceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getExperienceHash();

  @$internal
  @override
  $FutureProviderElement<List<ExperienceModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ExperienceModel>> create(Ref ref) {
    return getExperience(ref);
  }
}

String _$getExperienceHash() => r'f1086fa7bb371f50199b2653f2938d79e4bc5821';
