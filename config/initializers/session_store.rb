# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Spelled_session',
  :secret      => 'ce01418020898a861dfcbebc41b78c442870404dd735a108d065fc62cadf94fc2be16be8ecef143dceb1c551bb9a92589ea1ca12726e1dad28810a640db32d35'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
