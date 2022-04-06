my $file = 'fileTest.p6';

given $file.IO {
  CATCH {
	when X::IO::NotAFile
	{put "$file is not a plain file"}
	when X::IO::DoesNotExist
	{put "$file does not exists" }
  }
  put "Size is { .s }"
}
