Given(/^que cargue pantalla inicio$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |text|
  expect(page.body).to match /#{text}/m
end

Then(/^cargar asteriscos de palabra aleatoria en pantalla$/) do
  expect(page.body).to match "Espacios de la palabra a adivinar:<br/>--------"
end

Dado(/^que inicie un juego$/) do
	visit '/'
end

Entonces(/^debo ingresar "([^"]*)" como "([^"]*)"$/) do |letra, campoIntento|
  fill_in(campoIntento, :with => letra)
end

Entonces(/^debo poder buscar la letra en la palabra$/) do
  click_button("Probar")
end

Then(/^mostrar cantidad de intentos que le quedan al jugador$/) do
  expect(page.body).to match "Vidas: 6"
end

Entonces(/^para la palabra "([^"]*)" se debe pintar o mostrar la letra "([^"]*)" en la palabra$/) do |palabra, letra|
  expect(page.body).to match "-a-----a"
end
