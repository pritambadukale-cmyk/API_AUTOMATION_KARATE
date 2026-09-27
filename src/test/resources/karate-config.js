function fn() {
  var env = karate.env || 'qa';

  var config = {
    env: env,
    baseUrl: 'https://jsonplaceholder.typicode.com'
  };

  karate.configure('connectTimeout', 10000);
  karate.configure('readTimeout', 10000);
  karate.configure('logPrettyRequest', true);
  karate.configure('logPrettyResponse', true);

  return config;
}
