require 'net/ldap'
require 'devise/strategies/authenticatable'

module Devise
  module Strategies
    class LdapAuthenticatable < Authenticatable
      def authenticate!
        if params[:user]
          ldap = Net::LDAP.new
          ldap.host = '192.168.60.159'
          ldap.port = 389
          ldap.auth 'uid=' + CGI.escapeHTML(username.gsub(/['"\\\x0]/, '\\\\\0').gsub("\\", "").downcase) + ', ou=people, dc=pgn-solution, dc=co, dc=id', CGI.escapeHTML(password.gsub(/['"\\\x0]/, '\\\\\0').gsub("\\", ""))
          if ldap.bind
            getUserExists = User.find_by_username(username.downcase)
            unless getUserExists.nil?
              user = User.find_or_create_by(username: username.downcase) do |user|
                user.password = password
              end
            else
              user = User.find_or_create_by(username: username.downcase) do |user|
                user.password = password
                user.email = username + "@pgn-solution.co.id"
                user.user_type = "LDAP"
                user.name = username.gsub(".", " ").upcase
                user.role_ids = 2
              end
            end
            success!(user)
          else
            return fail(:invalid_login)
          end
        end
      end

      private
      def username
        params[:user][:username]
      end

      def password
        params[:user][:password]
      end

    end
  end
end

Warden::Strategies.add(:ldap_authenticatable, Devise::Strategies::LdapAuthenticatable)