RailsAdmin.config do |config|
  config.main_app_name = Proc.new {
    ["CityGuide Admin",'']
  }

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
   config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.model User do
    visible false
  end

  config.model Enterprise do
    edit do
      include_all_fields
       configure :user do
         visible false
       end


      field :user_id, :hidden do
        visible true
        default_value do
          bindings[:view].current_user.id
        end
      end


    end
  end

  config.model EventTime do
    visible false
  end

  config.actions do
    dashboard do
      statistics false
      hide
    end

    index                         # mandatory
    new
    # export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
