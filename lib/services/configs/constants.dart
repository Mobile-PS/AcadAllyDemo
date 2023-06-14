


final String baseUrl = "https://avalon310.raptechsolutions.com";  //live



Map<String, String> getHeader() => {
  'Content-Type': 'application/json',
  'Accept': "*/*",
};

Map<String, String> getHeader1(String token) => {
  'Authorization': 'Bearer '+token,
  'Content-Type': 'application/json',
};

Map<String, String> getHeader3(String token) => {
  'Authorization': 'Bearer '+token,
};

Map<String, String> getHeader2(int len) => {
  'Content-Type': 'image/png',
  'Content-Length':'$len',
};


Map<String, String> getpdfHeader2(int len) => {
  'Content-Type': 'application/pdf',
  'Content-Length':'$len',
};

String LoginUrl = baseUrl+ '/login/token.php';
String ProfileUrl = baseUrl+ '/webservice/rest/server.php';









