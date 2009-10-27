# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_frenzic_session',
  :secret      => 'f94c9bda272e821cb8b27ec0540ccdd20d072664664228a731719fcf370d64a74a7530a432e4e8318ca2fb6e7f6840bfb1a7fdebefacc3cd56493ff14675f5d1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
