Article.create! do |article|
  article.slug = "disponibilizando-as-rotas-nomeadas-do-rails-em-seu-javascript"
  article.title = "Disponibilizando as rotas nomeadas do Rails em seu JavaScript"
  article.description = <<-HTML
<p>Como todos devem saber, no Rails é possível definir nome para suas rotas.</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/0be3d6d8c6a15a4e1752.json"></div>

<p>Feito isto, nunca devemos referenciar esta rota diretamente pelo caminho relativo <code>/articles</code>, e sim por seu nome <code>articles_path</code>.</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/6751eb09b3da9c149b03.json"></div>

<p>Bom, até aí nada demais. Acredito que a grande maioria já faz o uso correto. O grande problema é quando precisamos acessar as rotas no JavaScript.</p>

<p>Nesses casos, vejo que muita gente ainda faz referência direto ao caminho relativo. E sempre que alteramos a forma de apresentar nossas rotas, o primeiro a quebrar são os JS.</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/c16fecbc30fd89bd9fe6.json"></div>

<h3>Solução</h3>

<p>Existem várias formas de resolver esse tipo de situação. O que indico é utilizar a gem <a href='https://github.com/railsware/js-routes' target='_blank'>js-routes</a>.</p>

<p>Como utilizar? Simples! Primeiro adicione em seu <strong>Gemfile</strong>:</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/b53addcff3e8ade0f75c.json"></div>

<p>Em seguida adicione em seu <strong>application.js</strong>:</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/cda24fd4a96b13605eb8.json"></div>

<p>Agora sempre que precisar utilizar alguma rota em seu JS:</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/2ece18d1d0bf2afefbab.json"></div>

<p>Pronto! Simples não? Não há mais motivo para acessar sua rota da forma errada.</p>
  HTML
end
