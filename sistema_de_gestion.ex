defmodule SistemaDeGestion do
  defstruct usuarios: []

  # Añadir un usuario
  def agregar_usuario(%SistemaDeGestion{usuarios: usuarios} = sistema, usuario) do
    %SistemaDeGestion{sistema | usuarios: [usuario | usuarios]}
  end

  # Eliminar un usuario
  def eliminar_usuario(%SistemaDeGestion{usuarios: usuarios} = sistema, usuario) do
    %SistemaDeGestion{sistema | usuarios: List.delete(usuarios, usuario)}
  end

  # Listar usuarios
  def listar_usuarios(%SistemaDeGestion{usuarios: usuarios}) do
    usuarios
  end
end
