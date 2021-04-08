
  Dado('que preciso acessar site da sky') do
    visit 'https://www.sky.com.br/programacao'
  end
  
  Quando('acesso o painel de programação e procuro o canal {string}') do |canal|
    @canal = canal
    find('.title-container').click 
    find('#searchChannel').click
    expect(page).to have_content 'Ainda não é cliente SKY?'  
    find('#searchChannel').set @canal
  end

  Então('devo visualizar o nome do canal {string}') do |mensagem|
    expect(page).to have_content mensagem
  end
  