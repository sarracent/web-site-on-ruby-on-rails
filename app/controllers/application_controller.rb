class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end

  before_action :set_new_contacts

  private

  def set_locale
    I18n.locale = params[:locale] || 
    extract_locale_from_accept_language_header || 
    I18n.default_locale
  end

  def extract_locale_from_accept_language_header
    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    locale if ['es', 'en' , 'fr'].include? locale.to_s
  end

  def default_url_options(options={})
    { locale: I18n.locale }
  end

  def set_new_contacts
  	@contact = Contact.new
  end

  def create
	  @contact = Contact.new(params[:contact])
      @contact.request = request
      if @contact.deliver
        flash.now[:error] = nil
      else
        flash.now[:error] = 'No se pudo mandar el mensaje.'
        render :new   
      end
  end
  
end
