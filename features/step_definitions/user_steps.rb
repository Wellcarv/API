Dado("que o cliente possue todos os dados necessários para criação do empréstimo") do |table|
    puts @user = table.rows_hash
end
  
Quando("envio todos os dados para o serviço de criação de empréstimo") do
    
end
  
Então("o serviço deve criar o empréstimo com sucesso HTTP {string}") do |string|
    
end


E("possue um token válido para se comunicar com o serviço") do
    
end
  
Quando("o cliente consultar o serviço de empréstimo informando o ID do empréstimo {string}") do |string|
    
end
  
Então("o serviço deve me retornar as informações do empréstimo criado {string}") do |string|
    
end