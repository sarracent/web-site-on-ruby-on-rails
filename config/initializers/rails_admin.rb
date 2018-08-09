RailsAdmin.config do |config|

  config.model Page do
    edit do
      field :title do
        label "Título"
      end
      field :body, :ck_editor do
        label "Contenido"
      end 
    end
  end

  config.model Post do
    edit do
      field :title do
        label "Título"
      end
      field :description do
        label "Descripción"
      end
      field :asset, :paperclip do
        label "Imagen"
      end
      field :body, :ck_editor do
        label "Contenido"
      end
      field :categories do
        label "Categorías"
      end 
    end
  end

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan
  
  config.parent_controller = 'ApplicationController'

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
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
