// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getProject)
final getProjectProvider = GetProjectProvider._();

final class GetProjectProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ProjectModel>>,
          List<ProjectModel>,
          FutureOr<List<ProjectModel>>
        >
    with
        $FutureModifier<List<ProjectModel>>,
        $FutureProvider<List<ProjectModel>> {
  GetProjectProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getProjectProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getProjectHash();

  @$internal
  @override
  $FutureProviderElement<List<ProjectModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ProjectModel>> create(Ref ref) {
    return getProject(ref);
  }
}

String _$getProjectHash() => r'4e1c245a997e63e293a9ba818320048b933612d3';
