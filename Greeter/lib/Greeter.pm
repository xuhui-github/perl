package Greeter;

use 5.006;
use strict;
use warnings;
use Moose;
use List::Util;
has guests => (is => 'rw' , isa => 'ArrayRef[Str]', default => sub { [] });

has members => (is => 'rw', isa => 'ArrayRef[Greeter::Member]', required => 1);

has guest_greeting => (is => 'ro', isa => 'Str', default => 'Hello __NAME__, I hope you are having a nice visit');

has unknown_greeting => (is => 'ro', isa => 'Str', default => "Hello __NAME__, I don't know you, do I?");

sub greet{
  my($self,$greeting_name,$greetee_name) = @_;
  my $greeting;

  if(! $greetee_name || $greeting_name eq $greetee_name) {
    $greeting = $self->_greet_person($greeting_name);
  }else {
    $greeting = $self->_greet_other_person($greeting_name,$greetee_name);
    }
    return $greeting;
  }

sub _greet_person{
  my ($self,$name) = @_;
  my $greeting;
  my ($member,$guest);

  if($member = first {$_->name eq $name} @{$self->members}){
    $greeting = $member->greeting;
    }

  elsif  ($guest = first {$_ eq $name} @{self->guests}){
    $greeting = $self->_greet_guest($name);
  } else {
    $greeting = $self->_greet_unknown($name)
  }
   return $greeting;

 }

 sub _greet_other_person{
  my($self,$greeter,$greetee) = @_;
  my $greeting; #return value

  my $members_greeting = first {$_->name eq $greeter } @{$self->members};
  my $member_to_greet = first {$_->name eq $greetee } @{$self->members};

  my $guests_greeting = first {$_ eq $greeter} @{$self->guests};
  my $guest_to_greet = first {$_ eq $greetee } @{$self->guests};
}
  
1;
__END__
=head1 USAGE
my $member = Greeter::Member->new(name => 'Sleepy',

greeting_string => 'Night Night __NAME__'

);

my $greeter = Greeter->new(

members => [$member],

guests => [qw( Homer Bart Marge Maggie) ]

guest_greeting =>

'Hello __NAME__, I hope you are having a nice visit',

unknown_greeting =>

"Hello __NAME__, I don't know you, do I?"

);
=head1 NAME

Greeter - The great new Greeter!

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use Greeter;

    my $foo = Greeter->new();
    ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS

=head2 function1

=cut

sub function1 {
}

=head2 function2

=cut

sub function2 {
}

=head1 AUTHOR

Me, C<< <ofxuhui at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-greeter at rt.cpan.org>, or through
the web interface at L<https://rt.cpan.org/NoAuth/ReportBug.html?Queue=Greeter>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Greeter


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<https://rt.cpan.org/NoAuth/Bugs.html?Dist=Greeter>

=item * CPAN Ratings

L<https://cpanratings.perl.org/d/Greeter>

=item * Search CPAN

L<https://metacpan.org/release/Greeter>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2024 by Me.

This is free software, licensed under:

  The Artistic License 2.0 (GPL Compatible)


=cut

1; # End of Greeter
