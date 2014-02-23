Article.create! do |article|
  article.slug = "gerando-relatorios-em-pdf-no-rails"
  article.title = "Gerando relatórios em PDF no Rails"
  article.description = <<-HTML
<p>Uma das etapas mais importantes no desenvolvimento de um sistema, na minha opnião, é a geração de relatórios. E quando comecei a desenvolver sistemas Web, uma grande dúvida que tinha era justamente essa. Tive muita dificuldade em achar bons artigos relacionados ao tema. Portanto, neste artigo, vou mostrar um pouco como faço atualmente.</p>

<p>Se tratando de Rails, sempre procuro encontrar a solução mais simples possível. E a gem <a href='https://github.com/mileszs/wicked_pdf' target='_blank'>wicked_pdf</a> resolve nosso problema de forma extremamente elegante, sem precisar lidar com nenhuma DSL de geração de PDF.</p>

<p>Com <a href='https://github.com/mileszs/wicked_pdf' target='_blank'>wicked_pdf</a>, simplesmente montamos nosso relatório em HTML/CSS, e ele se encarrega em transformá-lo em PDF. Essa conversão é feita de forma transparente, utilizando a ferramenta <a href='http://wkhtmltopdf.org/' target='_blank'>wkhtmltopdf</a>. Por baixo dos panos, ele sempre utiliza o motor do webkit para a conversão, garantindo assim, que nunca teremos problema com a renderização entre diferentes navegadores.</p>

<h3>Passo a passo</h3>

<p>Certifique-se que vc tenha o <a href='http://wkhtmltopdf.org/' target='_blank'>wkhtmltopdf</a> instalado:</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/33f6164afa6230c11324.json"></div>

<p>Adicione as seguintes gems em seu projeto:</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/d4286b63bdfed8e8425c.json"></div>

<p>Vamos criar apenas uma rota:</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/0c178b0ec9d2a1b6847d.json"></div>

<p>Nosso controller responderá para os formatos <strong>HTML</strong> e <strong>PDF</strong>:</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/91d9f08451b43dbb3d1a.json"></div>

<p>Com isso, dentro de <strong>app/views/articles</strong> teremos duas views, <strong>index.html.erb</strong> que responderá em HTML puro:</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/4cf8d5d2e90a26dbf7f8.json"></div>
<p><strong>index.pdf.erb</strong> que terá o conteúdo em HTML mas responderá em PDF:</p>
<div class="gist" data-src="https://gist.github.com/FabioMR/d0d43e65723a316d31ec.json"></div>

<p>Note que a mesma rota está respondendo para <strong>2 mime types</strong> diferentes, e definimos a variável <strong>@articles</strong> apenas uma vez.</p>

<h3>Exemplo</h3>

<p>Para facilitar o entendimento, criei um projeto de exemplo: <a href='https://github.com/FabioMR/wicked_pdf_example' target='_blank'>https://github.com/FabioMR/wicked_pdf_example</a>.</p>
  HTML
end
