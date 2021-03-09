// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_folio/_utils/input_utils.dart';
import 'package:flutter_folio/_widgets/context_menu_overlay.dart';
import 'package:flutter_folio/core_packages.dart';

import 'context_menus/app_context_menu.dart';

class StyledPageScaffold extends StatelessWidget {
  const StyledPageScaffold({Key key, this.body}) : super(key: key);
  final Widget body;

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.watch();
    //TODO: Add a FocusTraversalGroup() when this bug is addressed:https://github.com/flutter/flutter/issues/74656
    return GestureDetector(
      onTap: InputUtils.unFocus,
      child: Scaffold(
        backgroundColor: theme.bg1,
        body: Stack(
          children: [
            ContextMenuRegion(child: Container(), contextMenu: AppContextMenu()),
            body,
          ],
        ),
      ),
    );
  }
}
