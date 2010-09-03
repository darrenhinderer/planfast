# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_planfast_session',
  :secret      => '3c49f7e4095e35445346b099737dbb9d1cde010b07bc2a3b08931fe3162aade0baf560ac08b4d2c41b7e5d7c337f25ae1cbb10608c8262a25e19f6bdcd060b75'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
