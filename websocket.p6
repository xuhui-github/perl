
#use Cro::WebApp;
my $chat = Supplier.new;
get -> 'chat' {
    web-socket -> $incoming {        supply {
            whenever $incoming -> $message {
                $chat.emit(await $message.body-text);
            }
            whenever $chat -> $text {
                emit $text;
            }
        }
    }
}
