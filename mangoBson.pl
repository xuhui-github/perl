use Mango::BSON ':bson';
my $oid = mango->db('test')->collection('foo')
  ->insert({data => bson_bin("\x00\x01"), now => bson_time});
   
  # Non-blocking concurrent find
  # my $delay = Mojo::IOLoop->delay(sub {
  #   my ($delay, @docs) = @_;
  #     ...
  #     });
  #     for my $name (qw(sri marty)) {
  #       my $end = $delay->begin(0);
  #         mango->db('test')->collection('users')->find({name => $name})->all(sub {
  #             my ($cursor, $err, $docs) = @_;
  #                 $end->(@$docs);
  #                   });
  #                   }
  #                   $delay->wait;
  #                    
  #                    # Event loops such as AnyEvent are supported through EV
  #                    use EV;
  #                    use AnyEvent;
  #                    my $cv = AE::cv;
  #                    mango->db('test')->command(buildInfo => sub {
  #                      my ($db, $err, $doc) = @_;
  #                        $cv->send($doc->{version});
  #                        });
  #                        say $cv->recv;
