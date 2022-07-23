# frozen_string_literal: true

# Be sure to restart your server when you modify this file.

# For I18n, see `config/locales/role_core.en.yml` for details which followed the rule of ActiveRecord's I18n,
# See <http://guides.rubyonrails.org/i18n.html#translations-for-active-record-models>.

# Uncomment below if you want to integrate with CanCanCan
#
#   require "role_core/contrib/can_can_can_permission"
#   RoleCore.permission_class = RoleCore::CanCanCanPermission
require "role_core/contrib/can_can_can_permission"
RoleCore.permission_class = RoleCore::CanCanCanPermission
RoleCore.permission_set_class.draw do

  %w(Unit Brand Brochure Currency Delivery Disipline User Role).each do |item|
    group item.to_sym, model_name: "#{item.camelcase}" do
      permission :manage
      permission :index
      permission :create
      permission :destroy
      permission :update
      permission :read
    end
  end

  group :referensi_item, model_name: "ReferensiItem" do
    permission :manage
    permission :create
    permission :destroy
    permission :update
    permission :read
    permission :read_public
  end

  group :item, model_name: "Item" do
    permission :import
    permission :destroy_multiple
    permission :getDataTemplate
    permission :manage
    permission :create
    permission :destroy
    permission :update
    permission :read
    permission :read_public
  end

  group :price_item, model_name: "PriceItem" do
    permission :manage
    permission :create
    permission :new2
    permission :destroy
    permission :update
    permission :read
    permission :read_public
  end

  group :detail_item, model_name: "DetailItem" do
    permission :manage
    permission :create
    permission :destroy
    permission :update
    permission :read
    permission :read_public
  end

  group :delivery_item, model_name: "DeliveryItem" do
    permission :manage
    permission :create
    permission :destroy
    permission :update
    permission :read
    permission :read_public
  end

  group :item_price_letter, model_name: "ItemPriceLetter" do
    permission :manage
    permission :create
    permission :destroy
    permission :update
    permission :read
    permission :read_public
  end

  group :price_letter, model_name: "PriceLetter" do
    permission :manage
    permission :downloadLetter
    permission :create
    permission :destroy
    permission :update
    permission :read
    permission :read_public
  end

  group :country, model_name: "Country" do
    permission :manage
    permission :create
    permission :destroy
    permission :update
    permission :read
    permission :read_public
  end

  group :brochure, model_name: "Brochure" do
    permission :manage
    permission :create
    permission :new2
    permission :downloadBrochure
    permission :destroy
    permission :update
    permission :read
    permission :read_public
  end

  group :type, model_name: "Type" do
    permission :manage
    permission :create
    permission :destroy
    permission :update
    permission :read
    permission :read_public
  end

  group :product, model_name: "Product" do
    permission :manage
    permission :create
    permission :destroy
    permission :update
    permission :read
    permission :read_public
  end

  group :user_activity, model_name: "UserActivity" do
    permission :manage
    permission :create
    permission :destroy
    permission :update
    permission :read
    permission :read_public
  end

  # Define permissions for the application. For example:
  #
  #   permission :foo, default: true # `default: true` means grant to user by default
  #   permission :bar
  #
  # You can also group permissions by using `group`:
  #
  #   group :project do
  #     permission :create
  #     permission :destroy
  #     permission :update
  #     permission :read
  #     permission :read_public
  #
  #     # `group` supports nesting
  #     group :task do
  #       permission :create
  #       permission :destroy
  #       permission :update
  #       permission :read
  #     end
  #   end
  #
  # For CanCanCan integration, you can pass `model_name` for `group` or `permission`. For example:
  #
  #   group :project, model_name: "Project" do
  #     permission :create
  #     permission :destroy, model_name: 'Plan'
  #   end
  #
  # That will translate to CanCanCan's abilities (if user has these permissions),
  # the permission's name will be the action:
  #
  #   can :create, Project
  #   can :destroy, Plan
  #
  # You can pass `_priority` argument to `permission`
  #
  #   group :project, model_name: "Project" do
  #     permission :read_public,
  #     permission :read, _priority: 1
  #   end
  #
  # That will made 'read' prior than `read_public`.
  #
  # For CanCanCan's hash of conditions
  # (see https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities#hash-of-conditions)
  # you can simply pass them as arguments for `permission` even with a block
  #
  #   group :task, model_name: "Task" do
  #     permission :read_public, is_public: true
  #     permission :update_my_own, action: :update, default: true do |user, task|
  #       task.user_id == user.id
  #     end
  #   end
  #
  # Although permission's name will be CanCanCan's action by default,
  # you can pass `action` argument to override it.
  #
  #   permission :read_public, action: :read, is_public: true
  #
  # For some reason, you won't interpret the permission to CanCanCan,
  # you can set `_callable: false` to `permission` or `group`
  #
  #   permission :read, _callable: false
  #
end.finalize! # Call `finalize!` to freezing the definition, that's optional.
