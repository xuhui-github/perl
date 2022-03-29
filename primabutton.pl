use Prima qw(Application Buttons StdBitmap);

            my $window = Prima::MainWindow-> create;
            Prima::Button-> new(
                    owner => $window,
                    text  => 'Simple button',
                    pack  => {},
            );
            $window-> insert( 'Prima::SpeedButton' , 
                    pack => {},
                    image => Prima::StdBitmap::icon(0),
            );

            run Prima;


