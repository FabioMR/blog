Article.create! do |article|
  article.slug = "bem-vindo-ao-meu-blog"
  article.title = "Bem-vindo ao meu blog"
  article.published_at = Date.new(2014, 1, 1)
  article.description = <<-HTML
<p>Meu nome é Fábio Rodrigues, sou formado em Ciências da Computação e desenvolvo profissionalmente desde os meus 17 anos. Gosto de dizer que nunca trabalhei com nada além disso. Criei este blog para compartilhar um pouco do meu conhecimento com a comunidade.</p>

<p>Comecei minha carreira programando em Delphi, e assim foi por muitos anos. Também já me aventurei com outras linguagens (Java, .Net, PHP etc...). Até que um dia, eu conheci Ruby on Rails e não larguei mais.</p>

<p>Ruby on Rails é um framework extremamente poderoso, mas o que mais me fascina em Rails é o acesso à informação. Aprendi muito do que sei hoje lendo sua documentação e blogs. E esse blog é uma forma de retribuir tudo isso.</p>

<p>Como primeira contribuição, resolvi fazer esse blog do zero e disponibilizar o código-fonte para quem também quiser nos dar o prazer de divulgar seus conhecimentos. Fiquem à vontade para usar: <a href="https://github.com/FabioMR/blog" target="_blank">github.com/FabioMR/blog</a></p>

<p>Farei o possível para estar sempre postando algo novo por aqui.</p>

<p>Sejam bem-vindos!</p>
  HTML
end



