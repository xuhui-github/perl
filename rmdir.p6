my $dir="noexistedDir";

try {
  CATCH {
	when X::IO::Rmdir { ... }
  }
  $dir.IO.rmdir;
}
