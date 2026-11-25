import 'package:material_ui/material_ui.dart';
import 'package:myportofolio_mobile/models/experience.dart';
import 'package:myportofolio_mobile/services/api_client.dart';
import 'package:myportofolio_mobile/widgets/left_drawer.dart';
import 'package:provider/provider.dart';

class ExperienceList extends StatefulWidget {
  const ExperienceList({super.key});

  @override
  State<ExperienceList> createState() => _ExperienceListState();
}

class _ExperienceListState extends State<ExperienceList> {
  late Future<List<Experience>> _experiencesFuture;

  @override
  void initState() {
    super.initState();
    _experiencesFuture = context.read<ApiClient>().getExperiences();
  }

  Future<void> _reload() async {
    final future = context.read<ApiClient>().getExperiences();
    setState(() {
      _experiencesFuture = future;
    });
    await future;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Experiences')),
      drawer: const LeftDrawer(),
      body: FutureBuilder<List<Experience>>(
        future: _experiencesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Failed to load experiences: ${snapshot.error}',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton.icon(
                      onPressed: _reload,
                      icon: const Icon(Icons.refresh),
                      label: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            );
          }

          final experiences = snapshot.data ?? const <Experience>[];
          if (experiences.isEmpty){
            return RefreshIndicator(
              onRefresh: _reload,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: const Center(
                    child: Text(
                      'No experiences found.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            );
          }
          // TODO: When experiences is empty, return a centered 'No experiences found.' message
          // wrapped in RefreshIndicator + SingleChildScrollView(physics: AlwaysScrollableScrollPhysics())
          // so pull-to-refresh still works on an empty list.

          // TODO: Return a RefreshIndicator (onRefresh: _reload) wrapping a
          // ListView.builder that renders a Card/ListTile for each experience
          // (showing experience.title, experience.techStack, and experience.description)
          // and navigates to ExperienceDetail(experience: experience) on tap.
          return RefreshIndicator(
              onRefresh: _reload,
              child: ListView.builder(
                      itemCount: experiences.length,
                      itemBuilder: (context, index) {
                        final exp = experiences[index];
                        return ListTile(
                          title: Text(exp.title),
                          subtitle: Text(exp.description),
                        );
                      },
                    ),
          );
        },
      ),
    );
  }
}