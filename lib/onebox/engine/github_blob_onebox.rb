module Onebox
  module Engine
    class GithubGistOnebox
      include Engine

      matches do
        http
        maybe("www")
        domain("github")
        tld("com")
        anything
        with("/blob/")
      end

      private

      def data
        {
          url: @url,
        }
      end
    end
  end
end
