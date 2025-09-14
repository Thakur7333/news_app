import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jio_employee_relation_view_fe/app/core/resources/injection_container.dart';
import 'package:jio_employee_relation_view_fe/app/view/features/appbar/presentation/bloc/appbar_bloc.dart';
import 'package:jio_employee_relation_view_fe/app/view/features/appbar/presentation/bloc/appbar_event.dart';
import 'package:jio_employee_relation_view_fe/app/view/features/incident_workflow/presentation/bloc/incident_workflow_bloc.dart';
import 'package:jio_employee_relation_view_fe/app/view/features/my_report/presentation/bloc/my_report_bloc.dart';
import 'package:jio_employee_relation_view_fe/app/view/features/new_incident/presentation/bloc/new_incident_bloc.dart';
import 'app/core/routes/app_route.dart';
import 'app/global/theme/colors.dart';
import 'app/view/features/sahyog_home/presentation/bloc/sahyog_home_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final appRoute = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [],
      child: MaterialApp.router(
        // scrollBehavior:
        //     ScrollConfiguration.of(context).copyWith(scrollbars: false),
        debugShowCheckedModeBanner: false,
        routerConfig: appRoute.config(),
        title: 'News_app',
        theme: e(
          useMaterial3: false,
          colorScheme:
              ColorScheme.fromSeed(seedColor: CustomColors.rgba01201731),
        ),
      ),
    );
  }
}
