class DeviseInvitableAddToSpreeUsers < ActiveRecord::Migration
  def up
    change_table :spree_users do |t|
      t.string     :invitation_token
      t.datetime   :invitation_created_at
      t.datetime   :invitation_sent_at
      t.datetime   :invitation_accepted_at
      t.integer    :invitation_limit
      t.references :invited_by, :polymorphic => true
      t.integer    :invitations_count, default: 0
      t.index      :invitations_count
      t.index      :invitation_token, :unique => true # for invitable
      t.index      :invited_by_id
    end

    # And allow null encrypted_password and password_salt:
    change_column_null :spree_users, :encrypted_password, true
    change_column_null :spree_users, :password_salt,      true
  end

  def down
    change_table :spree_users do |t|
      t.remove_references :invited_by, :polymorphic => true
      t.remove :invitations_count, :invitation_limit, :invitation_sent_at, :invitation_accepted_at, :invitation_token, :invitation_created_at
    end
    change_column_null    :users, :encrypted_password, false
    change_column_null :spree_users, :password_salt,false
  end
end
