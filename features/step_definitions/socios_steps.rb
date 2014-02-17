Cuando(/^lleno "(.*?)" con "(.*?)"$/) do |campo, valor|
  fill_in(campo, :with => valor)
end
