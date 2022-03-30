use Cro::HTTP::Server;
use DB::MySQL;
use SVG;
use SDL;
use TAP;
#use Cro::WebSocket::Supplier;
use Cro::HTTP::Router;
use Cro::HTTP::Server;
use Cro::WebSocket::Client;
use Cro::WebSocket::BodyParsers;
use Cro::WebSocket::BodySerializers;
#use Cro::ZeroMQ;
use  Cro::WebApp::Form;
use Cro::Tools::LinkTemplate;
use Cro::Tools::Template;
my $chat = Supplier.new;
#get -> 'chat' {
#    web-socket -> $incoming {
#        supply {
#            whenever $incoming -> $message {
#                $chat.emit(await $message.body-text);
#            }
#            whenever $chat -> $text {
#                emit $text;
#            }
#        }
#    }
#}

#my $client = Cro::WebSocket::Client.new: uri =>
#    'ws://some.host:1234/path/to/chat';
