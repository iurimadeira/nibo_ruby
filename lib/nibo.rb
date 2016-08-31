require_relative 'nibo/request'
require_relative 'nibo/api_resource'
require_relative 'nibo/api_get'
require_relative 'nibo/api_put'
require_relative 'nibo/api_post'
require_relative 'nibo/api_delete'
require_relative 'nibo/resources'

module Nibo
  def self.endpoint
    'api-empresa.nibo.com.br/'
  end
end
