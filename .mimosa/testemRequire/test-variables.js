window.MIMOSA_TEST_REQUIRE_CONFIG = {
  "baseUrl": "/js",
  "paths": {
    "jquery": "vendor/jquery/jquery"
  },
  "shim": {
    "vendor/jquery.blockui": {
      "deps": [
        "jquery"
      ]
    }
  }
};
window.MIMOSA_TEST_MOCHA_SETUP = {
  "ui": "bdd"
};
window.MIMOSA_TEST_SPECS = [
  "app/example-require-spec",
  "app/example-squire-spec"
];