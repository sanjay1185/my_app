# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_my_app_session',
  :secret      => 'e729788a4940ec57f9947797fccfe73d2d223448a93a1d79de6116b5fa9eef6d93872527f1adb3f12fb375ba916ed0e0c1e867eb3d8bd9e8665684ac08d9ba8b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
