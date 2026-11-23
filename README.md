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

### Assignment 8
In this assignment, we have created several new pages and added a drawer to all screens. This drawer allows us to navigate through select pages while not intruding on the actual website's space because it lies in the corner. The pages that I added were form pages revolving around the 2 things that I had previously added within my website. Each form is equipped with input fields that vary based on their respective field. It is also equipped with a validator that is used to confirm that the input is not empty. If an input is valid it will display a popup reiterating what has been given. Aside from that, I have added extra functionality in the form of dark mode. Using a new variable that I can send to any screen, it can detect which theme the user is using and display it differently. The switch can be found within the drawer menu so it is accessible from any page. 

I used AI to help me implement features that I wanted to add such as scrolling and dark mode. It helped me troubleshoot and taught me how these features actually work. Aside from that I used it to help me answer a couple of the reflection questions that I was unsure of the answer. The chat can be found here: https://claude.ai/share/bcb748f9-a7b4-445e-ad68-2bae4ac55e9e

1. Push will replace the current screen by putting another screen ontop of the existing one, this allows for the traversal back to the original screen. Push replacement will clear out the entire stack so that you can't go back. Pop is what allows you to go back. The way the home button in my app works is that it uses push replacement to force the user onto the homescreen and they can't go back to where they started.
2. Scaffold comes with it's own layout set up, we can then edit what is inside by editting the arguments. This includes an option for drawer and appbar. By following the layout of scaffold on every screen we can ensure that all of our elements are consistently placed, including the drawer and appbar. Currently the only thing being affected by the project theme is dark mode. If enabled every page inverts the background color by checking the brightness of the page. Other elements are currently hardcoded and do not follow the theme given to the app.
3. The description input is given significantly more space than the name input because it is expected to be longer. If we were to give it the same amount of space as the name field, a completely reasonable description size might start to go off page and not fit without scrolling. Although we do provide scrollable functionality to both these fields in case a user has an exceptionally long input, this allows them to use more space than the page has to give. Categories are displayed in a drop down list due to the fact that we are limitting the options available. If we were to give a text field like name and description there is no predicting what may be input, which will not allow us to categorize properly. 
4. GlobalKey<FormState> is what allows us to access the form's state. This is used during the save process so that we can access the current state of the form and them send it to the validator, a field that we define within the form. We can call the validator by using validate. If it is valid we can call the key to reset the state so a fresh new form is available for the next user. Currently the only invalid inputs are empty inputs. Choosing an input widget or keyboard type isn't enough because it only restricts what the user is allowed to type. If they are able to bypass the restriction there is no more validation, something that could prove to be a vulnerability.
