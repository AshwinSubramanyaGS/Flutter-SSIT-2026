void main() {
  int attendance = 85;

  // Conditional logic
  if (attendance >= 75) {
    print("Eligible for Capstone Certification.");
  } else {
    print("Attendance threshold not reached.");
  }

  // Lists (Arrays)
  List<String> topics = ['Widgets', 'State Management', 'APIs'];
  topics.add('Deployment');

  for (String topic in topics) {
    print("Day Topic: $topic");
  }

  // Maps (Key-Value pairs)
  Map<String, String> softwareStatus = {
    'AndroidStudio': 'Configured',
    'VSCode': 'Installed',
    'FlutterSDK': 'Configured'
  };
  if (softwareStatus['AndroidStudio']=='Installed'){
    print("Android studio installed");
  } else{
    print("Please install Android studio");

  }

  
}
