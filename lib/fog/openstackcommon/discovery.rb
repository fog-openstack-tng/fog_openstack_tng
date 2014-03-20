# discovery.rb
# ------------
# Initially, this class will be used for identity, but no reason it shouldnt
# be used for service/version discovery across all services in the catalog.
module Fog
  module OpenStackCommon
    module Discovery

      # -- params --
      # service identifier (used to look up service in catalog), required
      # service url, optional
      # service version, optional, but can be stipulated if desired
      def self.locate(params = {})
        # Use the version parameter, if available
        # Use the version embedded in the url, if available
        # Use the latest stable version available in the service catalog

        version = 2

      end

    end
  end
end
