require 'rest_client'
require 'base64'
require 'json'

module Nibo
  class Request
    def self.send_request(method, api_token, resource_name, data)
      validate_user_data(api_token)
      request = RestClient::Request.execute(build_request(method, api_token, resource_name, data))
      handle_response request, resource_name
    end

    def self.validate_user_data(api_token)
      unless api_token
        raise "API Token not given"
      end
    end

    def self.url(resource_name)
      "http://#{Nibo.endpoint}#{resource_name}"
    end

    def self.handle_response(response, resource_name)
      JSON.parse(response, object_class: OpenStruct)
    end

    def self.build_request(method, api_token, resource_name, data)
      if method == "GET"
        build_get_request(api_token, resource_name, data)
      else
        build_non_get_request(method, api_token, resource_name, data)
      end
    end

    def self.build_get_request(api_token, resource_name, data)
      {
        headers: default_get_headers(api_token, data),
        method: "GET",
        url: url(resource_name),
        timeout: 30
      }
    end

    def self.build_non_get_request(method, api_token, resource_name, data)
      {
        headers: default_non_get_headers(api_token, data),
        method: method,
        payload: data.to_json,
        url: url(resource_name),
        timeout: 30
      }
    end

    def self.default_get_headers(api_token, data)
      {
        authorization: "bearer #{api_token}",
        accept: 'application/x-www-form-urlencoded',
        accept_charset: 'utf-8',
        accept_language: 'pt-br;q=0.9,pt-BR',
        content_type: 'application/json',
        params: data
      }
    end

    def self.default_non_get_headers(api_token, data)
      {
        authorization: "bearer #{api_token}",
        accept: 'application/json',
        accept_charset: 'utf-8',
        accept_language: 'pt-br;q=0.9,pt-BR',
        content_type: 'application/json'
      }
    end
  end
end
