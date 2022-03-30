use Cro::HTTP::Client;
use Cro::HTTP::Auth::WebToken;
my $product-url="http://www.baidu.com";
my $resp = await Cro::HTTP::Client.delete($product-url);
CATCH {

  when X::Cro::HTTP::Error {
        if .response.status == 404 {
            say "Product not found!";
        }
        else {
            say "Unexpected error: $_";
        }
    }
}


my $resp1 = await Cro::HTTP::Client.get('http://www.python.org');
say $resp1;
#my Str $body =await $resp1.body-text();
#say $body;

my Blob $body1=await $resp1.body-blob();
say $body1;

