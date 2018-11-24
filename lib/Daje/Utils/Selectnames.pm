package Daje::Utils::Selectnames;

use Mojo::Base -base;
our $VERSION = '0.3';

sub get_select_names_json{
		my ($self, $json_field, $fields_list) = @_;
		
		my $selectnames = '';
		foreach (@{$fields_list}){
			$selectnames .= " $json_field->>'$_->{setting_value}'::text as $_->{setting_value},";
		}
		
		$selectnames = substr($selectnames, 0, -1);
		return $selectnames;
}

sub get_select_names{
		my ($self, $fields_list) = @_;
		
		my $selectnames = '';
		foreach (@{$fields_list}){
			$selectnames .= " $_->{setting_value},";
		}
		
		$selectnames = substr($selectnames, 0, -1);
		return $selectnames;
}