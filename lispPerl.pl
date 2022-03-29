#!/usr/bin/perl 
use Language::LispPerl::Evaler;
 
my $lisp = Language::LispPerl::Evaler->new();
 
# Load core functions and macros
$lisp->load("core.clp");
 
my $res = $lisp->eval(q|
      (defmacro defn [name args & body]
        `(def ~name
           (fn ~args ~@body)))
 
      (defn foo [arg]
        (println arg))
 
      (foo "hello world!") ;comment here
    |);
