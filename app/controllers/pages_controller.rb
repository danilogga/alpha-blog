class PagesController < ApplicationController

  def home
    # se já tiver logado redireciona pra pagina dos artigos
    redirect_to articles_path if logged_in?
  end

  def about

  end

end
