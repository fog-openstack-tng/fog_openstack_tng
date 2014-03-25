module Fog
  module Identity
    module V2
      class OpenStackCommon
        class Real

          def get_user_by_id(user_id)
            request(
              :method   => 'GET',
              :expects  => [200, 203],
              :path     => "/users/#{user_id}"
            )
          end

          # class Mock
          #   def get_user_by_id(user_id)
          #     response = Excon::Response.new
          #     response.status = 200
          #
          #     existing_user = self.data[:users].find do |u|
          #         u[0] == user_id || u[1]['name'] == 'mock'
          #       end
          #     existing_user = existing_user[1] if existing_user
          #
          #     response.body = {
          #       'user' => existing_user || create_user('mock', 'mock', 'mock@email.com').body['user']
          #     }
          #     response
          #   end
          # end

        end

        class Mock
        end
      end # OpenStackCommon
    end # V2
  end # Identity
end # Fog