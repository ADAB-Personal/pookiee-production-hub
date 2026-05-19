import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const PookieMasterpieceApp());

ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

// Global Dynamic State Databases
String savedUser = "Dur E Adan";
String savedUsername = "dur_e_adan";
String savedLastName = "";
String savedEmail = "";
String savedPassword = "";
String secretRecoveryAnswer = "";

String activeSelectedCourse = "Python Programming";

// Strict Progression Flags per track
int pythonUnlockedIndex = 0;
int dbmsUnlockedIndex = 0;
int aimlUnlockedIndex = 0;
int cnUnlockedIndex = 0;

// Dynamic Completion Certificates Triggers
bool isPythonCompleted = false;
bool isDbmsCompleted = false;
bool isAimlCompleted = false;
bool isCnCompleted = false;

// Profile Network Dynamic Databases
final List<Map<String, dynamic>> premiumInstagramReelsDatabase = List.generate(12, (index) => {
  "id": index,
  "imageUrl": "https://picsum.photos/500/800?random=${index + 50}",
  "likes": 120 + index * 12,
  "commentsCount": 45 + index * 3,
  "caption": "Compiling complex system modules late night! 💻✨ Node architecture looks absolutely beautiful. #TechGirl #AestheticVibes",
  "isLikedByMe": false,
  "isFollowing": false
});

final List<Map<String, dynamic>> instagramHighlightsDatabase = [
  {"title": "✨ Sky Vibes", "img": "https://picsum.photos/200/200?random=10", "viewImg": "https://picsum.photos/600/1000?random=10", "quote": "Clear pink skies and endless microservice horizons."},
  {"title": "💻 Working", "img": "https://picsum.photos/200/200?random=11", "viewImg": "https://picsum.photos/600/1000?random=11", "quote": "Debugging widgets at 3:00 AM on the simulator stack."},
  {"title": "🍕 Foodie", "img": "https://picsum.photos/200/200?random=12", "viewImg": "https://picsum.photos/600/1000?random=12", "quote": " Fueling the logical execution engine beautifully."},
  {"title": "🎧 Beats", "img": "https://picsum.photos/200/200?random=13", "viewImg": "https://picsum.photos/600/1000?random=13", "quote": "Lo-Fi syntax rhythms for optimal deployment speed."}
];

// COURSE 1: Core Python Syllabus Database
final List<Map<String, dynamic>> pythonLessonsSyllabus = [
  {
    "id": 0,
    "topic": "Unit 1: Python Foundations & Pretty Tokens 🐍",
    "definition": "Let's learn the basic building blocks of Python coding, pookie:\n\n• Language Gossip: Python is super high-level, interpreted, dynamically typed, and literally the most scalable scripting language ever.\n• Syntax Magic: Say goodbye to ugly curly braces! Python uses perfectly aligned indentation spaces to make your blocks look clean and aesthetic.\n• Core Tokens: Master the fundamental elements like keywords, custom identifiers, literal constants, and cute math operators.\n• Variable Magic: Variables are just soft memory references that hold your data values without any annoying initialization types.",
    "example": "print('Pookie Verification Approved! ✨')\nuser_name = 'Dur E Adan'\nprint(type(user_name))",
    "expectedOutput": "Pookie Verification Approved! ✨",
    "triggerKeyword": "print"
  },
  {
    "id": 1,
    "topic": "Unit 2: Decision Logic & Control Loops 🎀",
    "definition": "Time to route your execution paths with some gorgeous logic flow rules:\n\n• Logical Checkpoints: Use equality constants, strict inequality limits, and compound operators (and, or, not) to test your code conditions.\n• Selection Logic: Use cute 'if' statements, nested 'elif' filters, and 'else' fallbacks to choose the perfect execution path.\n• For Loops: Use standard 'for' loops along with the range() function to cleanly walk through your list sequences.\n• While Loops: Run continuous data processing loops safely until your statements stop meeting the boolean condition criteria.",
    "example": "academic_score = 95\nif academic_score >= 90:\n    print('Status: Ultimate Mastery Queen 👑')\nelse:\n    print('Standard Pass')",
    "expectedOutput": "Status: Ultimate Mastery Queen 👑",
    "triggerKeyword": "print"
  },
  {
    "id": 2,
    "topic": "Unit 3: Functional Blocks & Slicing Magic ⭐",
    "definition": "Let's organize your code into beautiful, reusable functions so you never repeat yourself:\n\n• Custom Functions: Use the 'def' keyword to create your own isolated execution blocks with clean return logic.\n• Argument Styles: Learn how to pass standard positional arguments, explicit keyword values, and neat default parameters.\n• Variable Scope: Keep your variables localized on the stack frame or share them globally across your whole script workspace.\n• List Slicing: Use the iconic [start:stop:step] tools to instantly slice and extract data sub-sequences like a pro.",
    "example": "def send_pookie_handshake(target_profile):\n    return f'Handshake Success: {target_profile} ✨'\n\nprint(send_pookie_handshake('Dur E Adan'))",
    "expectedOutput": "Handshake Success: Dur E Adan ✨",
    "triggerKeyword": "print"
  },
  {
    "id": 3,
    "topic": "Unit 4: Linear Data Structures & Hash Maps 💫",
    "definition": "Sorting your data arrays into the prettiest structured setups ever:\n\n• List Hubs: Save your dynamic item collections inside square brackets with easy appending, inserting, and popping tricks.\n• Locked Tuples: Keep your data completely safe and immutable inside unchangeable parenthetical constants.\n• Dictionary Keys: Create ultra-fast hash maps that link unique string keys to beautiful dynamic data definitions.\n• Method Libraries: Master internal helper functions like append(), keys(), value lookups, and quick sorting procedures.",
    "example": "system_registry = {'user': 'Dur E Adan', 'tier': 'Premium Alpha'}\nprint(system_registry['tier'])",
    "expectedOutput": "Premium Alpha",
    "triggerKeyword": "print"
  }
];

// COURSE 2: Advanced DBMS Syllabus Database
final List<Map<String, dynamic>> dbmsLessonsSyllabus = [
  {
    "id": 0,
    "topic": "Unit 1: DBMS Architecture & Three-Schema Gossip 🗄️",
    "definition": "Let's spill the tea on how database engines actually organize your data files:\n\n• File System Flaws: Old-school storage systems have major drama with data redundancy and annoying inconsistency errors.\n• Three-Schema Framework: Keep things clean by separating your data architecture into External Views, Conceptual Logic, and Internal Physical layers.\n• Language Duos: Use Data Definition Language (DDL) to structure your tables, and Data Manipulation Language (DML) to modify them.\n• DBA Roles: Database Administrators handle user access, enforce strict security rules, and keep data recovery backups safe.",
    "example": "CREATE TABLE Student_Registry (\n    Student_ID VARCHAR(10) PRIMARY KEY,\n    Student_Name VARCHAR(50)\n);\nSELECT * FROM Student_Registry;",
    "expectedOutput": "Table Created. 0 Rows Selected.",
    "triggerKeyword": "SELECT"
  },
  {
    "id": 1,
    "topic": "Unit 2: ER Diagrams & Relational Model Keys 🔑",
    "definition": "Designing structural blueprints to keep your relational records totally locked and integrated:\n\n• ER Modeling: Draw out cute entity sets, multi-valued attributes, and clear relationship maps to plan your database setup.\n• Structural Keys: Identify candidate options, find all super keys, lock down your primary keys, and link records using foreign keys.\n• Table Translations: Learn the exact rules to turn a conceptual ER diagram directly into rigid rows, matching columns, and real tables.\n• Integrity Rules: Enforce entity limits and referential integrity to block bad or messy data entries from ruining your tables.",
    "example": "ALTER TABLE Student_Registry ADD FOREIGN KEY (Course_ID) REFERENCES Course_Outline(ID);",
    "expectedOutput": "Table Altered Successfully.",
    "triggerKeyword": "ALTER"
  },
  {
    "id": 2,
    "topic": "Unit 3: Normalization Rules & BCNF Perfection 🌸",
    "definition": "Cleaning up your database tables to remove all functional bugs and anomalies:\n\n• Functional Dependencies: Track how specific determinant columns map directly to other field paths inside your tables.\n• Core Normal Forms: Clean your data systematically by applying First (1NF), Second (2NF), and Third Normal Form (3NF) design bounds.\n• BCNF Perfection: Reach Boyce-Codd Normal Form by making sure every single determinant column functions as an actual super key.\n• Lossless Splits: Break your tables down into smaller sub-schemas while preserving all original dependencies and non-loss join steps.",
    "example": "SELECT Student_Name FROM Student_Registry WHERE Student_ID = 'DurEAdan';",
    "expectedOutput": "Result: Dur E Adan",
    "triggerKeyword": "SELECT"
  },
  {
    "id": 3,
    "topic": "Unit 4: ACID Protocols & Concurrency Locks 🔒",
    "definition": "Keeping your database completely safe when multiple users try to change things at the same time:\n\n• Transaction Life: Trace your data updates safely through Active, Partially Committed, Failed, and Aborted execution phases.\n• ACID Properties: Guarantee total Atomicity (all or nothing), system Consistency, absolute Isolation, and forever Durability.\n• Concurrency Flaws: Stop bad update bugs, dirty reads from uncommitted transactions, and messy non-repeatable data scans.\n• Lock Protocols: Use Exclusive (X) locks and Shared (S) locks alongside Two-Phase Locking models to prevent system deadlocks completely.",
    "example": "BEGIN TRANSACTION;\nUPDATE Account_Balances SET Balance = 100 WHERE User = 'Dur E Adan';\nCOMMIT;",
    "expectedOutput": "Transaction Committed. State Saved.",
    "triggerKeyword": "COMMIT"
  }
];

// COURSE 3: Complete AI & ML Syllabus Database
final List<Map<String, dynamic>> aimlLessonsSyllabus = [
  {
    "id": 0,
    "topic": "Unit 1: AI Foundations & Heuristic Search Gossip 🧠",
    "definition": "Let's dive into the world of smart machines and problem-solving tricks:\n\n• AI Intro: Understand how smart systems think, the iconic Turing Test gossip, and how production systems work.\n• Heuristic Magic: When standard searches get boring, we use intelligent heuristic functions to estimate the best path.\n• Search Algorithms: Master perfect pathfinding strategies like A* Search and complex AND-OR graphs (AO* Search).\n• Game Playing: Learn how machines play games like a pro using Minimax search and cute Alpha-Beta pruning rules.",
    "example": "def heuristic_check(state):\n    return f'Heuristic Score Evaluated for {state}'\nprint(heuristic_check('AI_Node_1'))",
    "expectedOutput": "Heuristic Score Evaluated for AI_Node_1",
    "triggerKeyword": "print"
  },
  {
    "id": 1,
    "topic": "Unit 2: Supervised Learning & Matrix Regressions 📊",
    "definition": "Teaching models using labeled dataset vectors safely:\n\n• Regression Maps: Map out Continuous linear formulas, compute mathematical mean squared errors, and optimize gradients.\n• Classification: Build predictive boundaries using Logistic equations, vector matrices, and probability indices.\n• Tree Classifiers: Branch logic nodes using decision tree boundaries and evaluate chaos drops using internal Entropy indices.",
    "example": "import sklearn\nprint('Supervised Learning Node Active 🎯')",
    "expectedOutput": "Supervised Learning Node Active 🎯",
    "triggerKeyword": "print"
  },
  {
    "id": 2,
    "topic": "Unit 3: Unsupervised Clusters & Dimensional Reduction 🧩",
    "definition": "Finding hidden math trends without predefined output arrays:\n\n• K-Means Strategy: Group continuous coordinates into tight geometric clusters by running recursive distance mean steps.\n• Hierarchy Maps: Stack related data parameters cleanly inside agglomerative structural data trees.\n• Feature Drops: Run Principal Component Analysis (PCA) formulas to crush massive vector shapes into tiny core dimensions.",
    "example": "print('Unsupervised Vector Space Configured ✅')",
    "expectedOutput": "Unsupervised Vector Space Configured ✅",
    "triggerKeyword": "print"
  },
  {
    "id": 3,
    "topic": "Unit 4: Deep Neural Layers & Backprop Descents ⚡",
    "definition": "Building artificial neural brains to evaluate complicated high-level datasets:\n\n• Perceptron Nodes: Stack custom inputs, inject weight parameters, apply activation bias scales, and test outputs.\n• Hidden Fabrics: Line up multiple deep hidden vector layers using non-linear transformation formulas.\n• Backpropagation: Track prediction variance backwards over mathematical partial derivatives to update node weights perfectly.",
    "example": "print('Deep Neural Loss Minimization Stable 🚀')",
    "expectedOutput": "Deep Neural Loss Minimization Stable 🚀",
    "triggerKeyword": "print"
  }
];

// COURSE 4: Complete Computer Networks Syllabus Database
final List<Map<String, dynamic>> cnLessonsSyllabus = [
  {
    "id": 0,
    "topic": "Unit 1: Networking Frameworks & Physical Layer Tea 🌐",
    "definition": "Let's explore how data packets travel across the world seamlessly:\n\n• Model Gossip: Break down the iconic 7-layer OSI Model blueprint vs the sleek 4-layer TCP/IP Internet suites.\n• Physical Pipelines: Send raw bit-streams over guided wires (fiber optics, coax) and dynamic wireless spaces.\n• Multiplexing Rules: Combine data streams beautifully using FDM, TDM, and structural wave-division methods.\n• Core Switching: Route data paths using vintage Circuit Switching methods vs modern, fast Packet Switching nodes.",
    "example": "def link_handshake(node):\n    return f'Physical Link Established with {node} ✨'\nprint(link_handshake('Router_Alpha'))",
    "expectedOutput": "Physical Link Established with Router_Alpha",
    "triggerKeyword": "print"
  },
  {
    "id": 1,
    "topic": "Unit 2: Data Link Layer framing & Media Access Controls ⛓️",
    "definition": "Managing raw bits into beautiful structural data frames cleanly:\n\n• Frame Logic: Boundary checks using character counts and custom bit stuffing masks to avoid overlap anomalies.\n• Error Isolation: Detect system errors using cyclic redundancy checks (CRC) and self-heal with Hamming codes.\n• MAC Strategies: Share communication paths smoothly using CSMA/CD wire backoffs and token loop parameters.",
    "example": "print('CRC Error Frame Check: Clear 🛡️')",
    "expectedOutput": "CRC Error Frame Check: Clear 🛡️",
    "triggerKeyword": "print"
  },
  {
    "id": 2,
    "topic": "Unit 3: Routing Protocols & IPv4 Routing Matrices 📍",
    "definition": "Directing dynamic information streams through massive web graph nodes:\n\n• IP Addressing: Structure standard 32-bit IPv4 masks and assign dynamic subnet tokens safely inside blocks.\n• Routing Systems: Use fast Link-State graph calculations (Dijkstra) and simple Distance Vector path sharing rules.\n• Control Helpers: Route utility diagnostic commands across network lines via ICMP status logs.",
    "example": "print('Packet Routed via Destination Port 8080')",
    "expectedOutput": "Packet Routed via Destination Port 8080",
    "triggerKeyword": "print"
  },
  {
    "id": 3,
    "topic": "Unit 4: Transport Layer Streams & Cryptographic Safety 🔒",
    "definition": "Ensuring perfect end-to-end communication pipelines without data packet losses:\n\n• Streaming Duos: Match fast, unverified UDP streams against ultra-secure, checked TCP connection channels.\n• Flow Buffering: Avoid overwhelming network data buffers using sliding windows and dynamic rate drops.\n• Network Safety: Protect open text pipelines using RSA public keys, AES locks, and verified TLS signatures.",
    "example": "print('TLS Handshake Cryptography Matrix Secure 💎')",
    "expectedOutput": "TLS Handshake Cryptography Matrix Secure 💎",
    "triggerKeyword": "print"
  }
];

class PookieMasterpieceApp extends StatelessWidget {
  const PookieMasterpieceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, mode, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: mode,
          theme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.light,
            colorSchemeSeed: const Color(0xFFFFC1CC),
            scaffoldBackgroundColor: const Color(0xFFFFFDFE),
            textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark,
            colorSchemeSeed: const Color(0xFFFF8DA1),
            scaffoldBackgroundColor: const Color(0xFF121212),
            textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
          ),
          home: const SignupScreen(),
        );
      },
    );
  }
}

// --- CLEAN STRUCTURAL FRAME (WITHOUT HARDWARE NAVIGATION BOTTOM BAR) ---
class UniversalSystemHardwareFrame extends StatelessWidget {
  final Widget child;

  const UniversalSystemHardwareFrame({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: child),
    );
  }
}

// --- 1. SIGNUP SCREEN ---
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _recoveryQuestionController = TextEditingController();
  bool _isAcceptedTerms = false;

  bool get _isFormValid {
    return _firstNameController.text.isNotEmpty &&
        _lastNameController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty &&
        _confirmPasswordController.text.isNotEmpty &&
        _recoveryQuestionController.text.isNotEmpty &&
        _passwordController.text == _confirmPasswordController.text &&
        _isAcceptedTerms;
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return UniversalSystemHardwareFrame(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: isDark
                  ? [const Color(0xFF1E1420), const Color(0xFF120C15)]
                  : [const Color(0xFFFFF5F7), const Color(0xFFFFE4E9)],
              begin: Alignment.topCenter, end: Alignment.bottomCenter
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("🌸", style: TextStyle(fontSize: 55)),
                Text("Pookie Production Hub", style: GoogleFonts.orbitron(fontSize: 22, fontWeight: FontWeight.bold, color: const Color(0xFFFF8DA1))),
                Text("Initialize your primary workspace node credentials", style: GoogleFonts.poppins(fontSize: 11, color: isDark ? Colors.white60 : Colors.black54)),
                const SizedBox(height: 25),

                Row(children: [
                  Expanded(child: _cleanField(_firstNameController, "First Name", Icons.person_outline)),
                  const SizedBox(width: 15),
                  Expanded(child: _cleanField(_lastNameController, "Last Name", Icons.badge_outlined)),
                ]),
                const SizedBox(height: 12),
                _cleanField(_emailController, "Institutional Email", Icons.alternate_email_rounded),
                const SizedBox(height: 12),
                _cleanField(_passwordController, "Security Password", Icons.lock_outline_rounded, isPass: true),
                const SizedBox(height: 12),
                _cleanField(_confirmPasswordController, "Confirm Password", Icons.gpp_good_outlined, isPass: true),
                const SizedBox(height: 12),
                _cleanField(_recoveryQuestionController, "Recovery Q: Favorite Person?", Icons.psychology_alt_outlined),
                const SizedBox(height: 15),

                CheckboxListTile(
                  value: _isAcceptedTerms,
                  onChanged: (val) => setState(() => _isAcceptedTerms = val ?? false),
                  title: Text("I accept full system structural bounds and compliance policy logic protocols.", style: GoogleFonts.poppins(fontSize: 11, color: isDark ? Colors.white70 : Colors.black87)),
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  activeColor: const Color(0xFFFF8DA1),
                ),
                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity, height: 55,
                  child: ElevatedButton(
                    onPressed: _isFormValid ? () {
                      savedUser = "${_firstNameController.text} ${_lastNameController.text}";
                      savedLastName = _lastNameController.text;
                      savedEmail = _emailController.text;
                      savedPassword = _passwordController.text;
                      secretRecoveryAnswer = _recoveryQuestionController.text;

                      Navigator.push(context, MaterialPageRoute(builder: (c) => const LoginScreen()));
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Account logic compiled! Please login to authenticate. ✨")));
                    } : null,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFC1CC),
                        disabledBackgroundColor: isDark ? Colors.white10 : Colors.black12,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                    ),
                    child: Text("SIGN UP SYSTEM CORE", style: GoogleFonts.orbitron(color: _isFormValid ? Colors.white : Colors.black26, fontWeight: FontWeight.bold, fontSize: 13)),
                  ),
                ),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (c) => const LoginScreen())),
                  child: const Text("Already registered? Open Login Terminal Gate", style: TextStyle(color: Color(0xFFFF8DA1), decoration: TextDecoration.underline, fontSize: 11)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _cleanField(TextEditingController c, String hint, IconData icon, {bool isPass = false}) => TextField(
    controller: c, obscureText: isPass,
    onChanged: (_) => setState(() {}),
    style: const TextStyle(fontSize: 13),
    decoration: InputDecoration(
      prefixIcon: Icon(icon, color: const Color(0xFFFF8DA1), size: 18),
      hintText: hint, hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
      filled: true, fillColor: Theme.of(context).cardColor,
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: const BorderSide(color: Colors.black12)),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: const BorderSide(color: Color(0xFFFF8DA1))),
    ),
  );
}

// --- LOGIN TERMINAL GATE ---
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailLoginController = TextEditingController();
  final _passwordLoginController = TextEditingController();

  bool get _isValidCredentialsMatch =>
      _emailLoginController.text.isNotEmpty &&
          _passwordLoginController.text.isNotEmpty &&
          _emailLoginController.text.trim() == savedEmail.trim() &&
          _passwordLoginController.text == savedPassword;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return UniversalSystemHardwareFrame(
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: isDark
                  ? [const Color(0xFF221524), const Color(0xFF120C15)]
                  : [const Color(0xFFFFF5F7), const Color(0xFFFFE4E9)],
              begin: Alignment.topCenter, end: Alignment.bottomCenter
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("🔐", style: TextStyle(fontSize: 55)),
                Text("SECURE LOGIN TERMINAL", style: GoogleFonts.orbitron(fontSize: 20, fontWeight: FontWeight.bold, color: const Color(0xFFFF8DA1))),
                Text("Input precise matching credentials to unlock your dashboard framework.", textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 11, color: isDark ? Colors.white60 : Colors.black54)),
                const SizedBox(height: 35),

                TextField(
                  controller: _emailLoginController, onChanged: (_) => setState(() {}),
                  style: const TextStyle(fontSize: 13),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.alternate_email_rounded, color: Color(0xFFFF8DA1)),
                    hintText: "Enter Your Registered Email", hintStyle: const TextStyle(color: Colors.grey),
                    filled: true, fillColor: Theme.of(context).cardColor,
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: const BorderSide(color: Colors.black12)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: const BorderSide(color: Color(0xFFFF8DA1))),
                  ),
                ),
                const SizedBox(height: 15),
                TextField(
                  controller: _passwordLoginController, onChanged: (_) => setState(() {}),
                  obscureText: true, style: const TextStyle(fontSize: 13),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_outline_rounded, color: Color(0xFFFF8DA1)),
                    hintText: "Enter Secret Password Key", hintStyle: const TextStyle(color: Colors.grey),
                    filled: true, fillColor: Theme.of(context).cardColor,
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: const BorderSide(color: Colors.black12)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: const BorderSide(color: Color(0xFFFF8DA1))),
                  ),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => _triggerSecurityRecoveryProcedure(context),
                    child: Text("Forgot Password?", style: GoogleFonts.poppins(color: const Color(0xFFFF8DA1), fontSize: 12, fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity, height: 55,
                  child: ElevatedButton(
                    onPressed: _isValidCredentialsMatch ? () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (c) => const MainNavigation()), (route) => false);
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Authentication system match certified. Welcome home! 👑💎")));
                    } : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFC1CC),
                      disabledBackgroundColor: isDark ? Colors.white10 : Colors.black12,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    ),
                    child: Text(
                        _isValidCredentialsMatch ? "VALIDATE & LAUNCH DASHBOARD" : "AWAITING MATCHING KEY",
                        style: GoogleFonts.orbitron(color: _isValidCredentialsMatch ? Colors.white : Colors.black26, fontWeight: FontWeight.bold, fontSize: 12)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _triggerSecurityRecoveryProcedure(BuildContext context) {
    final validationInput = TextEditingController();
    showDialog(
      context: context,
      builder: (c) => AlertDialog(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: const BorderSide(color: Color(0xFFFF8DA1))),
        title: Text("DECRYPT ACCOUNT KEY", style: GoogleFonts.orbitron(color: const Color(0xFFFF8DA1), fontSize: 14, fontWeight: FontWeight.bold)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Security Question Verification Chain:", style: TextStyle(fontSize: 11, color: Colors.grey)),
            const SizedBox(height: 5),
            const Text("Who is your absolute favorite person?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
            const SizedBox(height: 15),
            TextField(
              controller: validationInput,
              decoration: InputDecoration(hintText: "Type answer to verify memory keys", hintStyle: const TextStyle(fontSize: 12), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
            )
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(c), child: const Text("Abort Node")),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFFC1CC)),
            onPressed: () {
              if (validationInput.text.trim().toLowerCase() == secretRecoveryAnswer.trim().toLowerCase()) {
                Navigator.pop(c);
                _displayPlaintextKeyModal(context);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(backgroundColor: Colors.redAccent, content: Text("Verification failure! Security response mismatch.")));
              }
            },
            child: const Text("Verify Secret Node", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }

  void _displayPlaintextKeyModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (c) => AlertDialog(
        title: const Text("DECRYPTION BLOCKS SUCCESS ✅", style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.bold)),
        content: Text("Your primary account master secret access key code is recovered safely:\n\n🔑 Key Code: $savedPassword", style: const TextStyle(height: 1.4)),
        actions: [ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFFC1CC)), onPressed: () => Navigator.pop(c), child: const Text("Return to Terminal", style: TextStyle(color: Colors.white)))],
      ),
    );
  }
}

// --- 2. MASTER CHIP-BASED NAVIGATION HUB ---
class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});
  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentActiveIndex = 0;
  final _screensList = [
    const HomeCourseOutlineFeed(),
    const W3SchoolsProgressiveLearn(),
    const InstagramPremiumProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return UniversalSystemHardwareFrame(
      child: Scaffold(
        body: Column(
          children: [
            // Premium Matrix Navigation Floating Chips Channel
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              color: isDark ? const Color(0xFF1E1A22) : const Color(0xFFFFF0F3),
              child: SafeArea(
                bottom: false,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildNavigationChip(0, "Roadmap Matrix", Icons.map_rounded),
                    _buildNavigationChip(1, "Pookie Lab Engine", Icons.terminal_rounded),
                    _buildNavigationChip(2, "Insta Node Hub", Icons.stars_rounded),
                  ],
                ),
              ),
            ),
            Expanded(
              child: IndexedStack(
                index: _currentActiveIndex,
                children: _screensList,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationChip(int targetIndex, String label, IconData icon) {
    bool isSelected = _currentActiveIndex == targetIndex;
    return GestureDetector(
      onTap: () => setState(() => _currentActiveIndex = targetIndex),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
            color: isSelected ? const Color(0xFFFFC1CC) : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: isSelected ? const Color(0xFFFF8DA1) : Colors.black12, width: 1.5)
        ),
        child: Row(
          children: [
            Icon(icon, size: 14, color: isSelected ? Colors.black87 : Colors.grey),
            const SizedBox(width: 5),
            Text(label, style: GoogleFonts.orbitron(fontSize: 10, fontWeight: FontWeight.bold, color: isSelected ? Colors.black87 : Colors.grey)),
          ],
        ),
      ),
    );
  }
}

// --- 3. COURSE ROADMAP FEED ---
class HomeCourseOutlineFeed extends StatelessWidget {
  const HomeCourseOutlineFeed({super.key});

  @override
  Widget build(BuildContext context) {
    final modules = [
      {
        "title": "Course 1: Complete Python Programming Core 🐍",
        "desc": "• Clean tokens, variables references, loops & arrays list mappings.\n• Earn active certification credentials at unit completion boundaries.",
        "status": isPythonCompleted ? "✅ CERTIFIED COMPLETION" : "⏳ Core Progress Active",
        "icon": "🎀", "color": const Color(0xFFFFF0F2)
      },
      {
        "title": "Course 2: Advanced Database Systems (DBMS) 🗄️",
        "desc": "• Relational abstraction layers, ER models, 3NF/BCNF normalization forms, ACID transaction algorithms.",
        "status": isDbmsCompleted ? "✅ CERTIFIED COMPLETION" : "⏳ Core Progress Active",
        "icon": "✨", "color": const Color(0xFFEBF3FF)
      },
      {
        "title": "Course 3: Artificial Intelligence & Machine Learning 🧠",
        "desc": "• Heuristics search maps, regression paths, classification nodes, deep computational layers.",
        "status": isAimlCompleted ? "✅ CERTIFIED COMPLETION" : "⏳ Core Progress Active",
        "icon": "🚀", "color": const Color(0xFFE8F5E9)
      },
      {
        "title": "Course 4: Computer Networks Engineering 🌐",
        "desc": "• 7-Layer OSI mappings, framing logic checks, routing matrices, cryptographic layer bounds.",
        "status": isCnCompleted ? "✅ CERTIFIED COMPLETION" : "⏳ Core Progress Active",
        "icon": "📡", "color": const Color(0xFFFFFDE7)
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("SYSTEMS ROADMAP", style: GoogleFonts.orbitron(fontSize: 14, fontWeight: FontWeight.bold, color: const Color(0xFFFF8DA1), letterSpacing: 1)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              gradient: const LinearGradient(colors: [Color(0xFFFFC1CC), Color(0xFFFF8DA1)], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("WELCOME BACK, CODER QUEEN 👑", style: GoogleFonts.orbitron(fontSize: 12, fontWeight: FontWeight.w900, color: Colors.white, letterSpacing: 1)),
              const SizedBox(height: 10),
              Text("Hey $savedUser! ✨", style: GoogleFonts.orbitron(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
              const SizedBox(height: 8),
              Text("Your university full-stack engineering workspace has been successfully updated with complete curricula blocks.", style: GoogleFonts.poppins(color: Colors.white, fontSize: 11, height: 1.5)),
            ]),
          ),
          const SizedBox(height: 25),
          Text("ENGINEERING SYLLABUS DIRECTORY:", style: GoogleFonts.orbitron(fontSize: 12, fontWeight: FontWeight.bold, color: const Color(0xFFFF8DA1))),
          const SizedBox(height: 15),
          ...modules.map((m) => Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(color: m['color'] as Color, borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.black12)),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(m['icon'] as String, style: const TextStyle(fontSize: 24)),
              const SizedBox(width: 15),
              Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(m['title'] as String, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black87)),
                const SizedBox(height: 5),
                Text(m['desc'] as String, style: const TextStyle(fontSize: 11, color: Colors.black54)),
                const SizedBox(height: 8),
                Text(m['status'] as String, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: (m['status'] as String).contains("CERTIFIED") ? Colors.green : Colors.blueAccent)),
              ]))
            ]),
          )).toList(),
        ],
      ),
    );
  }
}

// --- 4. POOKIE LAB PROGRESSIVE CORE ---
class W3SchoolsProgressiveLearn extends StatefulWidget {
  const W3SchoolsProgressiveLearn({super.key});
  @override
  State<W3SchoolsProgressiveLearn> createState() => _W3SchoolsProgressiveLearnState();
}

class _W3SchoolsProgressiveLearnState extends State<W3SchoolsProgressiveLearn> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> activeSyllabus = pythonLessonsSyllabus;
    int activeUnlockedIndex = pythonUnlockedIndex;

    if (activeSelectedCourse == "Advanced DBMS") {
      activeSyllabus = dbmsLessonsSyllabus;
      activeUnlockedIndex = dbmsUnlockedIndex;
    } else if (activeSelectedCourse == "AI & ML") {
      activeSyllabus = aimlLessonsSyllabus;
      activeUnlockedIndex = aimlUnlockedIndex;
    } else if (activeSelectedCourse == "Computer Networks") {
      activeSyllabus = cnLessonsSyllabus;
      activeUnlockedIndex = cnUnlockedIndex;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pookie Lab Hub 💻", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(color: const Color(0xFFFFC1CC).withOpacity(0.2), borderRadius: BorderRadius.circular(12)),
            child: DropdownButton<String>(
              value: activeSelectedCourse,
              underline: const SizedBox(),
              items: <String>['Python Programming', 'Advanced DBMS', 'AI & ML', 'Computer Networks'].map((String val) {
                return DropdownMenuItem<String>(value: val, child: Text(val, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold)));
              }).toList(),
              onChanged: (newVal) {
                if (newVal != null) setState(() => activeSelectedCourse = newVal);
              },
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: activeSyllabus.length,
        itemBuilder: (context, index) {
          final lesson = activeSyllabus[index];
          bool isUnlocked = index <= activeUnlockedIndex;

          return Card(
            color: isUnlocked ? const Color(0xFFFFF0F2) : Colors.white12,
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: isUnlocked ? const Color(0xFFFF8DA1) : Colors.grey,
                child: Text("${index + 1}", style: const TextStyle(color: Colors.white, fontSize: 12)),
              ),
              title: Text(lesson['topic'], style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              trailing: Icon(isUnlocked ? Icons.play_arrow_rounded : Icons.lock_outline_rounded, size: 18),
              onTap: isUnlocked ? () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CompilerEnginePage(
                      courseTitle: activeSelectedCourse,
                      lessonIndex: index,
                      topic: lesson['topic'],
                      definition: lesson['definition'],
                      exampleCode: lesson['example'],
                      expectedOutput: lesson['expectedOutput'],
                      triggerKeyword: lesson['triggerKeyword'],
                    ),
                  ),
                );
                setState(() {});
              } : null,
            ),
          );
        },
      ),
    );
  }
}

// --- 5. COMPILER EMULATION KERNEL ---
class CompilerEnginePage extends StatefulWidget {
  final String courseTitle;
  final int lessonIndex;
  final String topic;
  final String definition;
  final String exampleCode;
  final String expectedOutput;
  final String triggerKeyword;

  const CompilerEnginePage({
    super.key, required this.courseTitle, required this.lessonIndex, required this.topic, required this.definition, required this.exampleCode, required this.expectedOutput, required this.triggerKeyword,
  });

  @override
  State<CompilerEnginePage> createState() => _CompilerEnginePageState();
}

class _CompilerEnginePageState extends State<CompilerEnginePage> {
  final _inputCodeController = TextEditingController();
  String terminalOutputLog = "Terminal Status: Awaiting command array logic execution run...";
  bool buildPassed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.topic, style: const TextStyle(fontSize: 13))),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(widget.definition, style: const TextStyle(fontSize: 12, height: 1.5)),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(15), color: Colors.black87, width: double.infinity,
            child: Text(widget.exampleCode, style: const TextStyle(color: Colors.greenAccent, fontFamily: 'monospace', fontSize: 11)),
          ),
          const SizedBox(height: 15),
          TextField(
            controller: _inputCodeController, maxLines: 2, style: const TextStyle(fontSize: 12),
            decoration: InputDecoration(hintText: "Type code using keyword '${widget.triggerKeyword}' to execute..."),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFFC1CC)),
            onPressed: () {
              setState(() {
                if (_inputCodeController.text.contains(widget.triggerKeyword)) {
                  terminalOutputLog = ">>> SUCCESS!\n${widget.expectedOutput}";
                  buildPassed = true;
                } else {
                  terminalOutputLog = ">>> ERROR: Expected token keyword mismatch!";
                  buildPassed = false;
                }
              });
            },
            child: const Text("Compile Dynamic Code Matrix", style: TextStyle(color: Colors.white, fontSize: 12)),
          ),
          const SizedBox(height: 15),
          Text(terminalOutputLog, style: TextStyle(color: buildPassed ? Colors.green : Colors.red, fontWeight: FontWeight.bold, fontSize: 12)),
          const SizedBox(height: 20),
          if (buildPassed) ElevatedButton(
            onPressed: () {
              if (widget.courseTitle == "Python Programming" && pythonUnlockedIndex == widget.lessonIndex) {
                pythonUnlockedIndex++;
                if (pythonUnlockedIndex >= pythonLessonsSyllabus.length) isPythonCompleted = true;
              } else if (widget.courseTitle == "Advanced DBMS" && dbmsUnlockedIndex == widget.lessonIndex) {
                dbmsUnlockedIndex++;
                if (dbmsUnlockedIndex >= dbmsLessonsSyllabus.length) isDbmsCompleted = true;
              } else if (widget.courseTitle == "AI & ML" && aimlUnlockedIndex == widget.lessonIndex) {
                aimlUnlockedIndex++;
                if (aimlUnlockedIndex >= aimlLessonsSyllabus.length) isAimlCompleted = true;
              } else if (widget.courseTitle == "Computer Networks" && cnUnlockedIndex == widget.lessonIndex) {
                cnUnlockedIndex++;
                if (cnUnlockedIndex >= cnLessonsSyllabus.length) isCnCompleted = true;
              }
              Navigator.pop(context);
            },
            child: const Text("Lock Progress & Synchronize Vector Link", style: TextStyle(fontSize: 12)),
          )
        ]),
      ),
    );
  }
}

// --- 6. INSTAGRAM PREMIUM PROFILE HUB INTERFACE (WITH INTEGRATED SETTINGS & MAP MATRIX) ---
class InstagramPremiumProfileView extends StatefulWidget {
  const InstagramPremiumProfileView({super.key});
  @override
  State<InstagramPremiumProfileView> createState() => _InstagramPremiumProfileViewState();
}

class _InstagramPremiumProfileViewState extends State<InstagramPremiumProfileView> {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            const Icon(Icons.lock_outline_rounded, size: 16),
            const SizedBox(width: 5),
            Text(savedUsername, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const Icon(Icons.keyboard_arrow_down_rounded, size: 18)
          ],
        ),
        actions: [
          IconButton(icon: const Icon(Icons.add_box_outlined), onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.settings_suggest_rounded, color: Color(0xFFFF8DA1)),
              onPressed: () => _displayPremiumSystemSettingsSheet(context)
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 43,
                          backgroundColor: Colors.pinkAccent.shade100,
                          child: const CircleAvatar(radius: 40, backgroundColor: Colors.white, child: CircleAvatar(radius: 37, backgroundImage: NetworkImage("https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=200"))),
                        ),
                        _profileStat("12", "Posts"),
                        _profileStat("14.5k", "Followers"),
                        _profileStat("480", "Following"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(savedUser, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(color: isDark ? Colors.white10 : Colors.black12, borderRadius: BorderRadius.circular(5)),
                          child: const Text("🎓 University Systems Scholar", style: TextStyle(fontSize: 10, color: Colors.pinkAccent)),
                        ),
                        const SizedBox(height: 5),
                        const Text("💻 Flutter Full-Stack & Advanced Databases Engine\n✨ Coding aesthetic matrix spaces smoothly...\n🌸 Tap certificates status below:", style: TextStyle(fontSize: 11, height: 1.4)),
                        const SizedBox(height: 8),
                        Wrap(
                          spacing: 5,
                          runSpacing: 5,
                          children: [
                            if (isPythonCompleted) _badge("🐍 Python Core Passed", "Python Programming Core Syllabus"),
                            if (isDbmsCompleted) _badge("🗄️ DBMS Mastered", "Advanced Database Management Systems"),
                            if (isAimlCompleted) _badge("🧠 AI/ML Verified", "Artificial Intelligence & Machine Learning track"),
                            if (isCnCompleted) _badge("🌐 Networks Certified", "Computer Networks Engineering Core Matrix"),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: isDark ? Colors.white10 : Colors.grey.shade200,
                                elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                            ),
                            onPressed: () => _openEditProfileSheet(context),
                            child: Text("Edit Profile", style: TextStyle(fontSize: 12, color: isDark ? Colors.white : Colors.black)),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: isDark ? Colors.white10 : Colors.grey.shade200,
                                elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                            ),
                            onPressed: () => _triggerShareProfileDialog(context),
                            child: Text("Share Profile", style: TextStyle(fontSize: 12, color: isDark ? Colors.white : Colors.black)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 95,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      itemCount: instagramHighlightsDatabase.length,
                      itemBuilder: (context, idx) {
                        final hl = instagramHighlightsDatabase[idx];
                        return GestureDetector(
                          onTap: () => _launchHighlightViewer(context, hl),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 28, backgroundColor: Colors.grey.shade300,
                                  child: CircleAvatar(radius: 26, backgroundColor: isDark ? Colors.black : Colors.white, child: CircleAvatar(radius: 24, backgroundImage: NetworkImage(hl['img']!))),
                                ),
                                const SizedBox(height: 5),
                                Text(hl['title']!, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500))
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Divider(height: 1),
                ],
              ),
            ),
            const SliverAppBar(
              pinned: true,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: TabBar(
                indicatorColor: Colors.pinkAccent,
                tabs: [
                  Tab(icon: Icon(Icons.grid_on_rounded, size: 20)),
                  Tab(icon: Icon(Icons.video_library_rounded, size: 20)),
                ],
              ),
            )
          ],
          body: TabBarView(
            children: [
              GridView.builder(
                padding: const EdgeInsets.all(2),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2),
                itemCount: premiumInstagramReelsDatabase.length,
                itemBuilder: (context, i) => Image.network(premiumInstagramReelsDatabase[i]['imageUrl'], fit: BoxFit.cover),
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: premiumInstagramReelsDatabase.length,
                itemBuilder: (context, index) {
                  final reel = premiumInstagramReelsDatabase[index];
                  return StatefulBuilder(
                      builder: (context, setReelState) {
                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                          decoration: BoxDecoration(
                              color: isDark ? Colors.white10 : Colors.grey.shade50,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                leading: const CircleAvatar(radius: 16, backgroundImage: NetworkImage("https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=100")),
                                title: Text(savedUsername, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                subtitle: const Text("Original Audio Node", style: TextStyle(fontSize: 10, color: Colors.grey)),
                                trailing: TextButton(
                                  onPressed: () {
                                    setReelState(() {
                                      reel['isFollowing'] = !reel['isFollowing'];
                                    });
                                  },
                                  child: Text(reel['isFollowing'] ? "Following" : "Follow", style: TextStyle(color: reel['isFollowing'] ? Colors.grey : Colors.blue, fontWeight: FontWeight.bold, fontSize: 11)),
                                ),
                              ),
                              Container(
                                height: 350, width: double.infinity,
                                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(reel['imageUrl']), fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(reel['isLikedByMe'] ? Icons.favorite_rounded : Icons.favorite_border_rounded, color: reel['isLikedByMe'] ? Colors.red : null),
                                      onPressed: () {
                                        setReelState(() {
                                          reel['isLikedByMe'] = !reel['isLikedByMe'];
                                          if (reel['isLikedByMe']) {
                                            reel['likes']++;
                                          } else {
                                            reel['likes']--;
                                          }
                                        });
                                      },
                                    ),
                                    Text("${reel['likes']}", style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                    const SizedBox(width: 15),
                                    const Icon(Icons.mode_comment_outlined, size: 22),
                                    const SizedBox(width: 5),
                                    Text("${reel['commentsCount']}", style: const TextStyle(fontSize: 12)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                                child: Text(reel['caption'], style: const TextStyle(fontSize: 11), maxLines: 2, overflow: TextOverflow.ellipsis),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    const CircleAvatar(radius: 10, backgroundImage: NetworkImage("https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=100")),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: TextField(
                                        style: const TextStyle(fontSize: 11),
                                        decoration: const InputDecoration(hintText: "Add comment...", border: InputBorder.none, isDense: true),
                                        onSubmitted: (v) {
                                          if (v.isNotEmpty) {
                                            setReelState(() {
                                              reel['commentsCount']++;
                                            });
                                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Comment validation deployed! ✅")));
                                          }
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _profileStat(String val, String label) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(val, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      Text(label, style: const TextStyle(fontSize: 11, color: Colors.grey)),
    ],
  );

  // INTERACTIVE INTERFACE MODIFIED TO OPEN THE CERTIFICATE FORM MODAL VIEW
  Widget _badge(String txt, String fullCourseTitle) => GestureDetector(
    onTap: () => _displayCertificateModal(context, fullCourseTitle),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      margin: const EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
          color: const Color(0xFFFFC1CC).withOpacity(0.2),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFFF8DA1), width: 1.2)
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(txt, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          const SizedBox(width: 4),
          const Icon(Icons.verified_user_rounded, size: 11, color: Colors.pinkAccent),
        ],
      ),
    ),
  );

  // --- DYNAMIC CERTIFICATE FORM VIEW FORM ---
  void _displayCertificateModal(BuildContext context, String courseName) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    showDialog(
      context: context,
      builder: (c) => AlertDialog(
        backgroundColor: isDark ? const Color(0xFF1B1424) : const Color(0xFFFFF7F9),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            side: const BorderSide(color: Color(0xFFFF8DA1), width: 2)
        ),
        content: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("🏆", style: const TextStyle(fontSize: 50)),
              const SizedBox(height: 10),
              Text(
                  "OFFICIAL GRADUATION CERTIFICATE",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.orbitron(
                      fontSize: 13,
                      fontWeight: FontWeight.w900,
                      color: const Color(0xFFFF8DA1),
                      letterSpacing: 0.5
                  )
              ),
              const Divider(color: Color(0xFFFFC1CC), thickness: 1.5, height: 25),
              const SizedBox(height: 10),
              Text(
                "This dynamic framework token certifies that",
                style: GoogleFonts.poppins(fontSize: 11, fontStyle: FontStyle.italic, color: Colors.grey),
              ),
              const SizedBox(height: 12),
              Text(
                  savedUser.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.orbitron(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: isDark ? Colors.white : Colors.black87,
                      letterSpacing: 1
                  )
              ),
              const SizedBox(height: 12),
              Text(
                "has successfully completed all standard code compilation testing, matrix laboratories, and logic benchmarks for the program:",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontSize: 10, height: 1.4, color: isDark ? Colors.white70 : Colors.black54),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: const Color(0xFFFFC1CC).withOpacity(0.15),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xFFFFC1CC))
                ),
                child: Text(
                  courseName,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("SYSTEM STATUS:", style: TextStyle(fontSize: 8, color: Colors.grey)),
                      Text("VERIFIED SHA256", style: GoogleFonts.orbitron(fontSize: 8, fontWeight: FontWeight.bold, color: Colors.green)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("AUTHORIZATION:", style: TextStyle(fontSize: 8, color: Colors.grey)),
                      Text("POOKIE ENGINE", style: GoogleFonts.orbitron(fontSize: 8, fontWeight: FontWeight.bold, color: const Color(0xFFFF8DA1))),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        actions: [
          Center(
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: const Color(0xFFFFC1CC).withOpacity(0.3)),
              onPressed: () => Navigator.pop(c),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text("Dismiss Matrix", style: TextStyle(color: const Color(0xFFFF8DA1), fontWeight: FontWeight.bold, fontSize: 12)),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _openEditProfileSheet(BuildContext context) {
    final nameEdit = TextEditingController(text: savedUser);
    final userEdit = TextEditingController(text: savedUsername);
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom, top: 20, left: 20, right: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Edit Identity Vectors", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
            const SizedBox(height: 20),
            TextField(controller: nameEdit, decoration: const InputDecoration(labelText: "Display Name", border: OutlineInputBorder())),
            const SizedBox(height: 15),
            TextField(controller: userEdit, decoration: const InputDecoration(labelText: "Username Vector", border: OutlineInputBorder())),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFFC1CC)),
              onPressed: () {
                setState(() {
                  savedUser = nameEdit.text;
                  savedUsername = userEdit.text;
                });
                Navigator.pop(ctx);
              },
              child: const Text("Save Node Structure Changes", style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void _triggerShareProfileDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (c) => AlertDialog(
        title: const Text("🔗 VECTOR SHARE SYSTEM"),
        content: Text("Link copied safely to stack register matrix:\n\nhttps://instagram.com/$savedUsername"),
        actions: [TextButton(onPressed: () => Navigator.pop(c), child: const Text("Dismiss Matrix"))],
      ),
    );
  }

  void _launchHighlightViewer(BuildContext context, Map<String, dynamic> hl) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Dismiss Story",
      pageBuilder: (context, anim1, anim2) => Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Stack(
            children: [
              Center(child: Image.network(hl['viewImg']!.toString(), fit: BoxFit.contain)),
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.black54, Colors.transparent], begin: Alignment.topCenter, end: Alignment.bottomCenter)
                ),
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    CircleAvatar(radius: 18, backgroundImage: NetworkImage(hl['img']!.toString())),
                    const SizedBox(width: 12),
                    Text(hl['title']!.toString(), style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13)),
                    const Spacer(),
                    IconButton(icon: const Icon(Icons.close, color: Colors.white), onPressed: () => Navigator.pop(context))
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  color: Colors.black45,
                  child: Text('"${hl['quote']!.toString()}"', textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 13, letterSpacing: 0.5)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _displayPremiumSystemSettingsSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
      builder: (ctx) {
        return ValueListenableBuilder<ThemeMode>(
            valueListenable: themeNotifier,
            builder: (context, currentMode, child) {
              bool currentIsDark = currentMode == ThemeMode.dark;
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.settings_applications_rounded, color: Color(0xFFFF8DA1)),
                        const SizedBox(width: 10),
                        Text("SYSTEM CONFIGURATION GATE", style: GoogleFonts.orbitron(fontSize: 14, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const Divider(height: 20),

                    // LIVE MAP NAVIGATION ACCESS TILE WITH PERMISSIONS PIPELINE
                    ListTile(
                      leading: const Icon(Icons.map_outlined, color: Colors.blueAccent),
                      title: const Text("Launch Live Map Tracking", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                      subtitle: const Text("Request GPS hardware permission & render matrix", style: TextStyle(fontSize: 11, color: Colors.grey)),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 14, color: Colors.grey),
                      onTap: () {
                        Navigator.pop(ctx); // Close Sheet
                        _handleLocationPermissionPipeline(context);
                      },
                    ),
                    const Divider(height: 10, color: Colors.black12),

                    ListTile(
                      leading: Icon(currentIsDark ? Icons.dark_mode_rounded : Icons.light_mode_rounded, color: const Color(0xFFFF8DA1)),
                      title: const Text("Aesthetic Interface Matrix", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                      subtitle: Text(currentIsDark ? "Dark Neon Mode Active" : "Light Pastel Mode Active", style: const TextStyle(fontSize: 11, color: Colors.grey)),
                      trailing: Switch(
                        activeColor: const Color(0xFFFF8DA1),
                        value: currentIsDark,
                        onChanged: (bool val) {
                          themeNotifier.value = val ? ThemeMode.dark : ThemeMode.light;
                        },
                      ),
                    ),
                    const SizedBox(height: 10),

                    ListTile(
                      leading: const Icon(Icons.logout_rounded, color: Colors.redAccent),
                      title: const Text("Kill Active Core Session", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.redAccent)),
                      subtitle: const Text("Disconnect terminal validation links", style: TextStyle(fontSize: 11, color: Colors.grey)),
                      onTap: () {
                        Navigator.pop(ctx);
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (c) => const LoginScreen()),
                                (route) => false
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Session terminated safely. Credentials locked. 🔒"))
                        );
                      },
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              );
            }
        );
      },
    );
  }

  // SYSTEM GATE FOR PERMISSIONS VERIFICATION
  void _handleLocationPermissionPipeline(BuildContext context) {
    showDialog(
      context: context,
      builder: (c) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Row(
          children: [
            const Icon(Icons.gpp_maybe_rounded, color: Color(0xFFFF8DA1)),
            const SizedBox(width: 8),
            Text("GPS PERMISSION NODE", style: GoogleFonts.orbitron(fontSize: 14, fontWeight: FontWeight.bold)),
          ],
        ),
        content: const Text("Pookie Masterpiece Hub requires authorization link to read device geographical coordinates stream vectors for mapping execution."),
        actions: [
          TextButton(onPressed: () => Navigator.pop(c), child: const Text("Deny Link")),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFFC1CC)),
            onPressed: () {
              Navigator.pop(c);
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("GPS Core Connection Verified! Streaming dynamic data... 📍")));
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PremiumLiveMapTerminal()));
            },
            child: const Text("Grant Authorization", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}

// --- 7. NEW COMPONENT: PREMIUM REALTIME LIVE TRACKING MAP FRAME ---
class PremiumLiveMapTerminal extends StatefulWidget {
  const PremiumLiveMapTerminal({super.key});
  @override
  State<PremiumLiveMapTerminal> createState() => _PremiumLiveMapTerminalState();
}

class _PremiumLiveMapTerminalState extends State<PremiumLiveMapTerminal> {
  // Simulated Location Vectors for Islamabad / User Position Context
  double latCoord = 33.6844;
  double lngCoord = 73.0479;
  bool isSearchingGPS = false;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text("LIVE SYSTEM VECTOR MAP", style: GoogleFonts.orbitron(fontSize: 12, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: const Icon(Icons.my_location_rounded, color: Color(0xFFFF8DA1)),
            onPressed: () {
              setState(() => isSearchingGPS = true);
              Future.delayed(const Duration(seconds: 1), () {
                setState(() {
                  isSearchingGPS = false;
                  // Dynamic calibration bounce updates
                  latCoord = 33.6851;
                  lngCoord = 73.0485;
                });
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("GPS Reference Streams Recalibrated Safely! 🛰️")));
              });
            },
          )
        ],
      ),
      body: Stack(
        children: [
          // Ultra-Premium Geographic Matrix Simulator Grid Block
          Container(
            color: isDark ? const Color(0xFF15151C) : const Color(0xFFF0F2F5),
            child: Center(
              child: CustomPaint(
                size: Size.infinite,
                painter: MapGridAestheticPainter(isDark: isDark),
              ),
            ),
          ),

          // Floating HUD Interface Data Layer
          Positioned(
            top: 15, left: 15, right: 15,
            child: Card(
              color: Theme.of(context).cardColor.withOpacity(0.9),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15), side: const BorderSide(color: Color(0xFFFFC1CC), width: 1)),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(width: 8, height: 8, decoration: const BoxDecoration(color: Colors.greenAccent, shape: BoxShape.circle)),
                        const SizedBox(width: 8),
                        Text("ACTIVE LOCATION FEED CHANNEL", style: GoogleFonts.orbitron(fontSize: 10, fontWeight: FontWeight.bold, color: const Color(0xFFFF8DA1))),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text("User Anchor: $savedUser ($savedUsername)", style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    Text("Coordinates System Matrix: Lat $latCoord °N | Lng $lngCoord °E", style: const TextStyle(fontFamily: 'monospace', fontSize: 10, color: Colors.grey)),
                  ],
                ),
              ),
            ),
          ),

          // Anchor Point Visual Representation Node
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFC1CC).withOpacity(0.25),
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color(0xFFFF8DA1), width: 2)
                  ),
                  child: const Icon(Icons.person_pin_circle_rounded, color: Colors.pinkAccent, size: 40),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.85),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text("Dur E Adan (You)", style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),

          if (isSearchingGPS)
            Container(
              color: Colors.black45,
              child: const Center(child: CircularProgressIndicator(color: Color(0xFFFF8DA1))),
            )
        ],
      ),
    );
  }
}

// Aesthetic Grid Canvas Framework representation for High Precision Maps Simulation
class MapGridAestheticPainter extends CustomPainter {
  final bool isDark;
  MapGridAestheticPainter({required this.isDark});

  @override
  void paint(Canvas canvas, Size size) {
    var paintLine = Paint()
      ..color = isDark ? Colors.white.withOpacity(0.04) : Colors.black.withOpacity(0.03)
      ..strokeWidth = 1.0;

    double gridSpacing = 40.0;
    for (double i = 0; i < size.width; i += gridSpacing) {
      canvas.drawLine(Offset(i, 0), Offset(i, size.height), paintLine);
    }
    for (double i = 0; i < size.height; i += gridSpacing) {
      canvas.drawLine(Offset(0, i), Offset(size.width, i), paintLine);
    }

    // Drawing aesthetic mock target radial rings
    var paintCircle = Paint()
      ..color = const Color(0xFFFFC1CC).withOpacity(0.1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 100, paintCircle);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 200, paintCircle);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}