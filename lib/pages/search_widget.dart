import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late FloatingSearchBarController controller;
  static const historyLength = 10;

// The "raw" history that we don't access from the UI, prefilled with values
  final List<String> _searchHistory = [
    'Home',
    'Blog',
    'More Page',
    'User profile',
  ];

  // The filtered & ordered history that's accessed from the UI
  late List<String> filteredSearchHistory;
// The currently searched-for term
  String selectedTerm = '';
  List<String> filterSearchTerms({
    @required String? filter,
  }) {
    if (filter != null && filter.isNotEmpty) {
      // Reversed because we want the last added items to appear first in the UI
      return _searchHistory.reversed
          .where((term) => term.startsWith(filter))
          .toList();
    } else {
      return _searchHistory.reversed.toList();
    }
  }

  void addSearchTerm(String term) {
    if (_searchHistory.contains(term)) {
      // This method will be implemented soon
      putSearchTermFirst(term);
      return;
    }
    setState(() {
      _searchHistory.add(term);
    });
    if (_searchHistory.length > historyLength) {
      _searchHistory.removeRange(0, _searchHistory.length - historyLength);
    }
    // Changes in _searchHistory mean that we have to update the filteredSearchHistory
    filteredSearchHistory = filterSearchTerms(filter: null);
  }

  void deleteSearchTerm(String term) {
    setState(() {
      _searchHistory.removeWhere((t) => t == term);
    });
    filteredSearchHistory = filterSearchTerms(filter: null);
  }

  void putSearchTermFirst(String term) {
    deleteSearchTerm(term);
    addSearchTerm(term);
  }

  @override
  void initState() {
    super.initState();
    controller = FloatingSearchBarController();
    filteredSearchHistory = filterSearchTerms(filter: null);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool isSearching = false;
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    // final model = Provider.of<SearchWidget>(context, listen: false);
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      body: FloatingSearchBar(
        borderRadius: BorderRadius.circular(20),
        iconColor: Colors.deepPurple,
        progress: isSearching,
        onQueryChanged: (query) {
          setState(() {
            filteredSearchHistory = filterSearchTerms(
              filter: query,
            );
            isFocused = true;
          });
        },
        onSubmitted: (query) {
          setState(() {
            addSearchTerm(query);
            selectedTerm = query;
            isFocused = false;
          });
          // _searchHistory.add(selectedTerm);
          controller.close();
        },
        onFocusChanged: (isFocused) {
          setState(() {
            isSearching = true;
          });
        },
        builder: (context, transition) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Material(
              borderRadius: BorderRadius.circular(10),
              // color: Colors.white,
              elevation: 4,
              child: Builder(
                builder: (context) {
                  if (filteredSearchHistory.isEmpty &&
                      controller.query.isEmpty) {
                    return Container(
                      // color: Colors.deepPurple,
                      height: 56,

                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Start searching',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    );
                  } else if (filteredSearchHistory.isEmpty) {
                    return ListTile(
                      // tileColor: Colors.deepPurple,
                      title: Text(controller.query),
                      leading: const Icon(
                        Icons.search,
                        color: Colors.deepPurple,
                      ),
                      onTap: () {
                        setState(() {
                          addSearchTerm(controller.query);
                          selectedTerm = controller.query;
                        });
                        controller.close();
                      },
                    );
                  } else {
                    return Scrollbar(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: filteredSearchHistory
                            .map(
                              (term) => ListTile(
                                title: Text(
                                  term,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                leading: const Icon(
                                  Icons.history,
                                  color: Colors.deepPurple,
                                ),
                                trailing: IconButton(
                                  icon: const Icon(
                                    Icons.clear,
                                    color: Colors.deepPurple,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      deleteSearchTerm(term);
                                    });
                                  },
                                ),
                                onTap: () {
                                  setState(() {
                                    putSearchTermFirst(term);
                                    selectedTerm = term;
                                  });
                                  controller.close();
                                },
                              ),
                            )
                            .toList(),
                      ),
                    );
                  }
                },
              ),
            ),
          );
        },
        actions: [
          FloatingSearchBarAction.searchToClear(
            showIfClosed: false,
          ),
        ],
        transition: CircularFloatingSearchBarTransition(),
// Bouncing physics for the search history
        physics: const BouncingScrollPhysics(),
// Title is displayed on an unopened (inactive) search bar
        title: selectedTerm == ''
            ? const Text('Search Tech Cuttie')
            : Text(
                selectedTerm,
                // style: Theme.of(context).textTheme.headline6,
              ),
// Hint gets displayed once the search bar is tapped and opened
        hint: 'Search and find out...',
        controller: controller,
        body: FloatingSearchBarScrollNotifier(
            child: Scrollbar(
          child: ListView(
            padding: const EdgeInsets.only(top: 70),
            children: filteredSearchHistory
                .map(
                  (term) => ListTile(
                    title: Text(
                      term,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    leading: const Icon(
                      Icons.history,
                      color: Colors.deepPurple,
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.clear,
                        color: Colors.deepPurple,
                      ),
                      onPressed: () {
                        setState(() {
                          deleteSearchTerm(term);
                        });
                      },
                    ),
                    onTap: () {
                      setState(() {
                        putSearchTermFirst(term);
                        selectedTerm = term;
                      });
                      controller.close();
                    },
                  ),
                )
                .toList(),
          ),
        )),
        key: scaffoldKey,
        scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
        axisAlignment: isPortrait ? 0.0 : -1.0,
        transitionDuration: const Duration(milliseconds: 800),
        transitionCurve: Curves.easeInOutCubic, width: isPortrait ? 600 : 500,
        debounceDelay: const Duration(milliseconds: 500),
        accentColor: Colors.purpleAccent,
        automaticallyImplyBackButton: true,
        border: const BorderSide(
            color: Colors.deepPurple, width: 2, style: BorderStyle.solid),
        // hintStyle: 1 > 2
        //     ? const TextStyle(color: Colors.black)
        //     : const TextStyle(color: Colors.white)
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
