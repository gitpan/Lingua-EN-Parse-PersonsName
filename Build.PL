use Module::Build;
# See perldoc Module::Build for details of how this works

Module::Build->new(
	module_name	=> 'Lingua::EN::Parse::PersonsName',
	license		=> 'perl',
	requires	=> {
			Class::Accessor::Chained	=>	'0',
	},	
)->create_build_script;
