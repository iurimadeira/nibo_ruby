module Nibo
  module APIDelete
    module ClassMethods
      def delete(api_token, data = nil)
        data ||= {}
        Request.send_request('DELETE', api_token, "#{resource_name_pluralized}", data) if data.is_a? Hash
      end
    end

    def self.included(base)
      base.extend(ClassMethods)
    end
  end
end
