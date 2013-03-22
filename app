#!/usr/bin/env perl
use Mojolicious::Lite;

get '/' => sub {
  my $self = shift;
  my $req = $self->req;
  $self->render('index',req=>$req);
};

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
% title 'Welcome';
running app with request <br/><pre><%= dumper($req) %></pre>

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>
