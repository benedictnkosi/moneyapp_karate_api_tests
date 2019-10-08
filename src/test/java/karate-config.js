function fn() {
  var env = karate.env; // get system property 'karate.env'
  //karate.log('karate.env system property was, env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
	baseUrl: 'http://localhost'
  }
  if (env == 'preprod') {
    // customize
    config.baseUrl = 'http://sixtyfive.co.za/preprod/application';
  } else if (env == 'local') {
    config.baseUrl = 'http://localhost';
  }

  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);

  return config;
}