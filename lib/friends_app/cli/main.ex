defmodule FirnedsApp.CLI.Main do
  alias Mix.Shell.IO, as: Shell

  def start_app do
    Shell.cmd("clear")
    welcome_message()
    Shell.prompt("pressione ENTER para continuar...")
    start_menu_choices()
  end

  defp welcome_message do
    Shell.info("========= Friends App =========")
    Shell.info("Seja bem-vindo | Sua agenda pessoal!")
    Shell.info("===============================")
  end

  defp start_menu_choices do
    FriendsApp.CLI.MenuChoice.all()
  end
end
