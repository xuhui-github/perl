  use Caroline;
  my $caroline = Caroline->new();
                my $c = Caroline->new(
                    completion_callback => sub {
                        my ($line) = @_;
                        if ($line eq 'h') {
                            return (
                                'hello',
                                'hello there'
                            );
                        } elsif ($line eq 'm') {
                            return (
                                '突然のmattn'
                            );
                        }
                        return;
                    },
                );
    my $prompt=">>>";
    my $line = $caroline->read($prompt);


    $caroline->history_add($line)

