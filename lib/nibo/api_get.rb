module Nibo
  module APIGet
    module ClassMethods
      def get(api_token, data = nil)
        data ||= {}
        Request.send_request('GET', api_token, "#{resource_name_pluralized}", data) if data.is_a? Hash
      end
    end

    def self.included(base)
      base.extend(ClassMethods)
    end
  end
end
