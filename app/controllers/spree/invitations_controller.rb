module Spree
  class InvitationsController < Devise::InvitationsController
    include Spree::Core::ControllerHelpers::Common
    include Spree::Core::ControllerHelpers::Store
    helper 'spree/base', 'spree/store'
  end
end
