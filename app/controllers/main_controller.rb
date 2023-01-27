class MainController < ApplicationController
  def index
    flash[:notice] = "Logado com sucesso"
    flash[:alert] = "Email ou senha inválidos"
  end

end
