# myportofolio_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Tugas 7
This app is a simple app that simply displays a few buttons and some information about myself. There is no functionality yet and all the buttons will just show a snackbar. I only used AI to help me answer the following questions, here is the link: https://claude.ai/share/c161fa69-bc09-40c0-acfd-294f62b0671f

1. A widget tree is a nested structure of widgets. Almost everything is a widget so any parent-child relationships means that that the child widget is an element or attribute of the parent widget. The parent decides the child's context while the child provides the content.
2. Custom widgets: MyApp is the root widget used to run the app, everything is built on it, MyHomePage is a widget used to render and format the home page, InfoCard is a widget used to create a reusable card element, ItemCard is a widget used to create a resuable tappable tile element. Builtin widgets: MaterialApp sets up the app using Material Design, Scaffold gives the app a basic structure, AppBar is the bar at the top of the screen, Padding adds empty space, Column lays out children vertically, Row lays out children horizontally, SizedBox is a fixed sixed box, Center centers it's child, GridView creates a scrollable grid, Card, Material is a material that affects color and ink effects, InkWell responds to touch, Icon creates a glyph, Text, SnackBar is a brief message.
3. MaterialApp is a root widget that is used as the foundation to apps. It provides a lot of functionality and includes the configuration of many features of the app so that you don't have to do it yourself. 
4. A stateless widget is fully immutable and relies on constructor data when building, any changes are through the constructor and need a rebuild and the creation of a new instance. Stateful widgets are split into a widget, immutable, contains configuration information, and state, contains mutable data and the ability to rebuild itself. You should use stateful only when something is destined to change, if not just use stateless.
5. BuildContext provides context to a widgets location within a tree, it is important because sometimes a child will follow a scheme from the parent. To be able to access the parent we need to use the context to find it. This is used by the build function to provide context to a child when needed
6. A hot reload allows you to change the code while the app is still running without changing the state, hot restart completely recompiles the code. A hot restart is needed if the change applies to something only ever initiated once (ex. initial values for a state, main(), etc.), hot reload only rebuilds the widget tree.
