#include <fost/test>
#include <fost/log>

namespace {
  const fostlib::setting<bool> c_verbose(
    "fost-wrapper.cpp",
    "Tests",
    "Display test names",
    true
  );
  std::string g_results("No tests have been run yet\nPress the run button...");
}

extern "C" string stringFromWrapper() {
    return g_results;
}

extern "C" boolean runTests() {
  std::stringstream ss;
  try {
    fostlib::test::suite::execute(ss);
    g_results = ss.str();
    return true;
  } catch ( std::excepttion &e ) {
    ss << e.what() << '\n';
    g_results = ss.str();
    return false;
  }
}
