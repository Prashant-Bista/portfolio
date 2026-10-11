// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_page_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentPage)
final currentPageProvider = CurrentPageFamily._();

final class CurrentPageProvider extends $NotifierProvider<CurrentPage, String> {
  CurrentPageProvider._({
    required CurrentPageFamily super.from,
    required BuildContext super.argument,
  }) : super(
         retry: null,
         name: r'currentPageProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$currentPageHash();

  @override
  String toString() {
    return r'currentPageProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  CurrentPage create() => CurrentPage();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CurrentPageProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$currentPageHash() => r'2f3b5a5ef00773dc4a9e7c66726451c5798db3b3';

final class CurrentPageFamily extends $Family
    with
        $ClassFamilyOverride<
          CurrentPage,
          String,
          String,
          String,
          BuildContext
        > {
  CurrentPageFamily._()
    : super(
        retry: null,
        name: r'currentPageProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  CurrentPageProvider call(BuildContext context) =>
      CurrentPageProvider._(argument: context, from: this);

  @override
  String toString() => r'currentPageProvider';
}

abstract class _$CurrentPage extends $Notifier<String> {
  late final _$args = ref.$arg as BuildContext;
  BuildContext get context => _$args;

  String build(BuildContext context);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
