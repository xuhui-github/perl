 use Prima qw(Grids Application);

            my $grid = Prima::Grid-> new(
                    cells       => [
                            [qw(1.First 1.Second 1.Third)],
                            [qw(2.First 2.Second 2.Third)],
                            [qw(3.First 3.Second 3.Third)],
                    ],
                    onClick     => sub {
                            print $_[0]-> get_cell_text( $_[0]-> focusedCell), " is selected\n";
                    }
            );
            run Prima;

