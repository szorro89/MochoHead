Dado(/^que inicie un juego$/) do
	visit '/'
end

Entonces(/^debo ingresar "([^"]*)" como "([^"]*)"$/) do |letra, campoIntento|
  fill_in(campoIntento, :with => letra)
end

Entonces(/^debo ver un boton para comparar la letra en la palabra$/) do
  click_button("Probar")
end