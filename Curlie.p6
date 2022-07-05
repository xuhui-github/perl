use Curlie;
my \c=Curlie.new();
#say c.get('https://httpbin.org/get').res;
say c.get('http://www.baidu.com').res;
my $content=c.get: 'https://httpbin.org/status/200', :json;
say $content;
