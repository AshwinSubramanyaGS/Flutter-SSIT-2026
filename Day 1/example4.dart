class SoftwareTool {
  String name;
  String version;

  SoftwareTool(this.name, this.version);

  void displaySpecs() {
    print("Tool: $name | Version: $version");
  }
}

// Inheritance
class IDE extends SoftwareTool {
  List<String> extensions;

  IDE(String name, String version, this.extensions) : super(name, version);

  @override
  void displaySpecs() {
    super.displaySpecs();
    print("Loaded Plugins: ${extensions.join(', ')}");
  }
}

void main() {
  IDE developmentEditor = IDE("VS Code", "1.85", ["Flutter", "Dart", "Git"]);
  developmentEditor.displaySpecs();
}