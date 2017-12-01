Given(/^que cargue pantalla inicio$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |text|
  expect(page.body).to match /#{text}/m
end

Then(/^cargar asteriscos de palabra aleatoria en pantalla$/) do
  expect(page.body).to match "Espacios de la palabra a adivinar:xxxxx"
end

Dado(/^que inicie un juego$/) do
	visit '/'
end

Entonces(/^debo ingresar "([^"]*)" como "([^"]*)"$/) do |letra, campoIntento|
  fill_in(campoIntento, :with => letra)
end

Entonces(/^debo ver un boton para comparar la letra en la palabra$/) do
  click_button("Probar")
end