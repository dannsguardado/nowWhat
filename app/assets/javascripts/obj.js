jQuery(document).ready(function () {
  $(".first").click(function () {
    $(".arrow-down").css({ 'margin-left': '0vh' });
    $(".title").html("About us");
    $(".text").html("Com esta feira planeamos dar a conhecer, aos estudantes da nossa faculdade, todas as hipóteses que têm ao seu dispor durante e após o seu percurso académico. Assim planeamos expor e clarificar o mundo do empreendedorismo, bem como promover uma interação com as várias estruturas empregadoras.");
  });
  $(".second").click(function () {
    $(".arrow-down").css({ 'margin-left': '7vh' });
    $(".title").html("Estágios");
    $(".text").html("Nada melhor que a experiência, desta modo irá decorrer a promoção dos estágios que existem propostos na área da informática e do design e multimédia.Assim as entidades que nos visitarem poderão promover as suas propostas durante o evento e e breve também aqui!");
  });
  $(".third").click(function () {
    $(".arrow-down").css({ 'margin-left': '17vh' });
    $(".title").html("Experiencia de trabalhar numa empresa");
    $(".text").html("Em breve muitos de nós terminarão o seu percurso académico sem saber o que esperar do mundo do trabalho.Pretendemos assim clarificar essa experiência, introduzindo diferentes áreas e métodos de trabalho");
  });
  $(".fourth").click(function () {
    $(".arrow-down").css({ 'margin-left': '26.5vh' });
    $(".title").html("Preparação para a saída para o mercado de trabalho/Soft Skills");
    $(".text").html("Existem várias capacidades importantes numa pessoa, que não se limitam ao conhecimento conceitual. Deste modo irão decorrer sessões de capacitação de características pessoais (soft skills) que vão para além do intelectual.");
  });
  $(".fifth").click(function () {
    $(".arrow-down").css({ 'margin-left': '39vh' });
    $(".title").html("Empreendedorismo");
    $(".text").html("Numa área em constante evolução e repleta de novas oportunidades a inovação é um grande aliado. Pretendemos inspirar os estudantes com casos tanto de sucesso como de falha na perseverança de encarar e acreditar nas suas ideias.");
  });
  $(".sixth").click(function () {
    $(".arrow-down").css({ 'margin-left': '52vh' });
    $(".title").html("Hard skills");
    $(".text").html("Irão decorrer momentos de capacitação sobre áreas tecnológicas do interesse dos participantes, complementando o seu conhecimentos em áreas menos abordadas no percurso académico.");
  });
  $(".seventh").click(function () {
    $(".arrow-down").css({ 'margin-left': '66vh' });
    $(".title").html("Continuação académica");
    $(".text").html("A abertura para a contínua formação é um requisito para a área. Assim ocorrerão sessões de esclarecimento das hipóteses académicas ao dispor na nossa faculdade.");
  });
});