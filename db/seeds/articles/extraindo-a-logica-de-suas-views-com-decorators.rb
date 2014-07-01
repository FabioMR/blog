Article.create! do |article|
  article.slug = "extraindo-a-logica-de-suas-views-com-decorators"
  article.title = "Extraindo a lógica de suas views com decorators"
  # article.published_at = Date.new(2014, 8, 1)
  article.description = <<-HTML
<p>Usamos decorators para extender um model (ou qualquer outro objeto) com novas funcionalidades e extrair a lógica das views. Dessa forma, melhoramos a legibilidade do código e facilitamos a escrita de testes.</p>

<p>Acredito que a grande maioria dos desenvolvedores já estão familiarizados com decorators e muitas vezes deixam de utilizar por não conhecer uma forma simples de fazer. Não que seja um pattern difícil de se utilizar, pelo contrário, existem diversas gems que nos auxiliam. Neste artigo vou mostrar como faço.</p>

<p>Gosto muito do Rails justamente por ser extremamente simples, e não vejo muito problema em usar um código mais intrusivo quando bem feito e que seja em prol da simplicidade. Por esse motivo, minha gem favorita é <a href='https://github.com/amatsuda/active_decorator' target='_blank'>active_decorator</a>.</p>

<h3>Exemplo de código sem decorator</h3>
<div class="gist" data-src="https://gist.github.com/FabioMR/7fda9e4deb2a0070572c.json"></div>
<div class="gist" data-src="https://gist.github.com/FabioMR/b9f167be244c7d41d109.json"></div>
<div class="gist" data-src="https://gist.github.com/FabioMR/e986ea2782d29c75009c.json"></div>

<h3>E agora o mesmo exemplo com decorator</h3>
<p>Adicione em seu <strong>Gemfile</strong>:</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/4f0d281561c29ef4669f.json"></div>

<p>Repare que em nosso <strong>model</strong> e <strong>controller</strong> não temos nenhuma mudança.</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/7fda9e4deb2a0070572c.json"></div>
<div class="gist" data-src="https://gist.github.com/FabioMR/b9f167be244c7d41d109.json"></div>

<p>Agora basta incluir nosso <strong>decorator</strong> com toda lógica necessária.</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/e1867098c063e5007695.json"></div>

<p>E agora veja como nossa <strong>view</strong> ficou muito mais simples e legível.</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/a25ad7d580fda7ce8cf5.json"></div>

<h3>E como nosso como nosso objeto foi decorado? Mágica?</h3>
<p>Muitos gostam de dizer que no Rails muita coisa funciona magicamente. Não sou a favor deste termo. A mágica só existe quando não entendemos o que realmente está acontecendo.</p>

<p>
A gem <a href='https://github.com/amatsuda/active_decorator' target='_blank'>active_decorator</a> injeta automaticamente o decorator em qualquer objeto (mesmo sendo parte de uma coleção) enquanto são passados de algum controller para uma view, ou de alguma view para uma partial.<br>
Foi exatamente isso que aconteceu em nosso controller. A variável <code>@articles</code> recebeu uma coleção comum, porém cada item da coleção foi automaticamente decorado no momento em que foi passada para a view.
</p>

<p>Este exemplo foi retirado do código fonte deste blog. Para ver o código completo, acesse: <a href="https://github.com/FabioMR/blog" target="_blank">github.com/FabioMR/blog</a>.</p>
  HTML
end
