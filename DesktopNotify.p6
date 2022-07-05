use Desktop::Notify::Simple;

my $n = Desktop::Notify::Simple.new(
    :app-name('testone'),
      :summary('Attention!'),
        :body('What just happened?'),
	  :icon('stop')
	).show;

	sleep 2;

	$n.update(:summary('Oh well!'), :body('Not quite a disaster!'), :icon('stop')).show;
