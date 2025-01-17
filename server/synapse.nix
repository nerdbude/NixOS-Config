{ pkgs, lib, config, ... }:
{
  services.postgresql.enable = true;
  services.postgresql.initialScript = pkgs.writeText "synapse-init.sql" ''
    CREATE ROLE "matrix-synapse" WITH LOGIN PASSWORD 'synapse';
    CREATE DATABASE "matrix-synapse" WITH OWNER "matrix-synapse"
      TEMPLATE template0
      LC_COLLATE = "C"
      LC_CTYPE = "C";
  '';
  
  services.matrix-synapse = {
    enable = true;
    settings.server_name = "kyb3r.space";
    settings.enable_metrics = true;
    settings.registration_shared_secret_path = "/var/lib/matrix-synapse/matrix-shared-secret";

    settings.database.name = "psycopg2";
    settings.database.args = {
      	user = "matrix-synapse";
	password = "synapse";
    };
    settings.listeners = [
      {
        bind_addresses = [ "localhost" ];
	port = 8448;
	tls = false;
       resources = [
          { compress = true; names = ["client" "federation"]; }
	  { compress = false; names = [ "federation" ]; }
        ];
	type = "http";
	x_forwarded = false;
      }
      {
	bind_addresses = [ "127.0.0.1" ];
	port = 8008;
	resources = [ { compress = true; names = [ "client" "federation" ]; }
	];
	tls = false;
	type = "http";
	x_forwarded = true;
      }

    ];
  };
#  services.matrix-synapse.extraConfigFiles = [
#  	"/var/lib/matrix-synapse/matrix-shared-secret" ]; 
	
}
