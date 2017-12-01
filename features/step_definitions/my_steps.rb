Given(/^que cargue pantalla inicio$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |text|
  expect(page.body).to match /#{text}/m
end

Then(/^cargar asteriscos de palabra aleatoria en pantalla$/) do
  expect(page.body).to match "Espacios de la palabra a adivinar:xxxxx"
end

