ActiveAdmin.register Producer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :name, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at
  index do
    selectable_column
    id_column
    column :name
    column :email
    column :sign_in_count
    column :created_at
    column :track_count do |user|
      columns user.tracks.count
    end
    column :pending_request do |user|
      columns WorkMate.where(producer_id: user.id, state: "pending").count
    end
    actions
  end
end


