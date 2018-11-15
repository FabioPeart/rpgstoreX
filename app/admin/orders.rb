# frozen_string_literal: true

ActiveAdmin.register Order do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :date, :productprice, :quantity, :total, :appliedtax, :sentaddress, userorders_attributes: %i[id user_id order_id _destroy]

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs 'Order' do
      f.input :date
      f.input :productprice
      f.input :quantity
      f.input :total
      f.input :appliedtax
      f.input :sentaddress
      f.has_many :userorders, allow_destroy: true do |n_f|
        n_f.input :user
      end
    end

    f.actions
  end
end
