Article.create! do |article|
  article.slug = "i18n-para-datas-numeros-e-booleanos"
  article.title = "I18n para datas, números e booleanos"
  article.published_at = Date.new(2014, 1, 9)
  article.description = <<-HTML
<p>Aqui vai um pequeno truque que uso em todos meus projetos para facilitar a tradução de datas, números e booleanos.</p>

<p>Crie o arquivo <strong>config/initializers/locale.rb</strong></p>
<div class="gist" data-src="https://gist.github.com/FabioMR/8197230.json"></div>

<p>Traduzindo datas...</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/f14f2c26d24bb2d80797.json"></div>

<p>Traduzindo números...</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/cbe773f1f7671b45e041.json"></div>

<p>Traduzindo booleanos...</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/5c2acc8c2203e2d691c2.json"></div>

<p>E caso seja um valor nulo...</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/72781088623d832dbe14.json"></div>

<p><strong>Obs.:</strong> Vale lembrar que para tudo isso funcionar, devemos ter nossos arquivos de localização devidamente configurados. Uma dica é usar a gem <strong>rails-i18n</strong> que já faz boa parte do trabalho.</p>
  HTML
end
