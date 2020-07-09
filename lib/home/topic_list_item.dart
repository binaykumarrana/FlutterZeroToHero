import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:widgets/asset/asset_screen.dart';
import 'package:widgets/bottomnav/bottom_nav_demo.dart';
import 'package:widgets/button/button_bar.dart';
import 'package:widgets/button/button_demo.dart';
import 'package:widgets/checkbox/checkbox_demo.dart';
import 'package:widgets/column/column_demo.dart';
import 'package:widgets/datetime/date_time_demo.dart';
import 'package:widgets/drawer/drawer_sample.dart';
import 'package:widgets/font/font_screen.dart';
import 'package:widgets/home/topic.dart';
import 'package:widgets/icons/icon_demo.dart';
import 'package:widgets/image/image_demo.dart';
import 'package:widgets/input/input_demo.dart';
import 'package:widgets/list/custom_list.dart';
import 'package:widgets/list/list_demo.dart';
import 'package:widgets/list/list_with_search.dart';
import 'package:widgets/list/search_flappy.dart';
import 'package:widgets/list/search_grid_list.dart';
import 'package:widgets/row/row_demo.dart';
import 'package:widgets/slider/slide_demo.dart';
import 'package:widgets/switch/switch_demo.dart';
import 'package:widgets/tabs/default_tabs.dart';
import 'package:widgets/tabs/tabs_demo.dart';
import 'package:widgets/text/text_label_demo.dart';
import 'package:widgets/theme/app_theme.dart';

class TopicListItem extends StatelessWidget {
  final Topic topic;

  TopicListItem(this.topic);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(topic.name),
        onTap: () {
          if (topic.name == "AppTheme") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => AppTheme()));
          } else if (topic.name == "Custom Fonts") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CustomFonts()));
          } else if (topic.name == "Assets") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => AssetDemo()));
          } else if (topic.name == "Text/Label") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => TextLabelDemo()));
          } else if (topic.name == "Button") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ButtonDemo()));
          } else if (topic.name == "Button Bar") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ButtonBarDemo()));
          } else if (topic.name == "Image") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ImageDemo()));
          } else if (topic.name == "Icon") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => IconDemo()));
          } else if (topic.name == "Row") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => RowDemo()));
          } else if (topic.name == "Column") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ColumnDemo()));
          } else if (topic.name == "Input Text") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => InputDemo()));
          } else if (topic.name == "DefaultTabsController") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MyTabbedPage()));
          } else if (topic.name == "TabsController") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => TabBarDemo()));
          } else if (topic.name == "Bottom Navigation") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => BottomNavDemo()));
          } else if (topic.name == "Default ListView") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ListDemo()));
          } else if (topic.name == "Custom ListView") {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CustomListDemo()));
          } else if (topic.name == "Navigation Drawer") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DrawerDemo()));
          } else if (topic.name == "CheckBox") {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MyCheckboxPage()));
          } else if (topic.name == "Switch") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SwitchDemo()));
          } else if (topic.name == "Search with List") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SearchBarDemo()));
          } else if (topic.name == "Search with Grid") {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SearchBarGridDemo()));
          } else if (topic.name == "Slider") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SlideDemo()));
          } else if (topic.name == "Date&Time Picker") {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DateTimePickerDemo()));
          }
        });
  }
}
