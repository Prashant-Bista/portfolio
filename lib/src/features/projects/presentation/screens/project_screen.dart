import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/src/core/components/custom_appbar.dart';
import 'package:portfolio/src/core/components/error_widget.dart';
import 'package:portfolio/src/core/components/loading_widget.dart';
import 'package:portfolio/src/features/projects/presentation/provider/project_provider.dart';
import 'package:portfolio/src/features/projects/presentation/widgets/project_showcase.dart';

class ProjectScreen extends ConsumerWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projects = ref.watch(getProjectProvider);
    return CustomScaffold(
      body: projects.when(
        data: (data) => ListView.separated(
          padding: EdgeInsets.all(15),
          
          itemCount: data.length,
          itemBuilder: (context, index) => ProjectShowcase(project: data[index]), separatorBuilder: (BuildContext context, int index) =>SizedBox(height: 16,),
        ),
        error: (error, st) => AppErrorWidget(message: error.toString()),
        loading: () => AppLoadingWidget(),
      ),
    );
  }
}
