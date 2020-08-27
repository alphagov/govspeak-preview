# Be sure to restart your server when you modify this file.

# Specify a serializer for the signed and encrypted cookie jars.
# Valid options are :json, :marshal, and :hybrid.

# Once this has app has been deployed a while with hybrid we can switch it to
# :json - I set this is in August 2020, so if it is at at least a few weeks
# after that this can be changed to :json
Rails.application.config.action_dispatch.cookies_serializer = :hybrid
