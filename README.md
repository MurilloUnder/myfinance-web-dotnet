# myfinance-web-dotnet
MyFinance Web - Controle de Finanças e Gastos
MyFinance - Projeto do Curso de Pós-Graduação em Engenharia da Computação PUC-MG.

Esse é um projeto para controle financeiro pessoa, utilizado para ajudar na medição, rastreabilidade e controle financeiro dos usuários.

É fundamental para garantir a saúde financeira a curto e longo prazo e para alcançar objetivos financeiros, como economizar para uma casa ou uma aposentadoria confortável.

O objetivo deste projeto é possibilitar que os usuários registrem suas entradas e saídas financeiras e analisem seus gastos, a fim de que o usuário realize um planejamento financeiro mais eficaz. Essa aplicação permitirá que o usuário crie um Plano de Contas personalizado para categorizar todas as transações, e também fornecerá um relatório detalhado das transações realizadas durante um determinado período.

Tecnologias
O projeto manipula as seguintes tecnologias:

ASP .NET MVC
SQL Server
Requisitos
Para abrir esse projeto, você deve ter instalado a última versão do Visual Studio Code e a versão 6.0 do SDK .Net.

O script de criação do banco de dados deve ser executado para total acesso as funcionalidades da aplicação.

Diagrama Entidade-Relacionamento - DER
O Banco de Dados da aplicação possuí duas tabelas:

transacao - que irá conter os dados das transações financeiras do usuário;
planoconta - que irá conter os itens do Plano de Contas do usuário;

# SWE - Diagrama de Entidade e Relacionamento
<img src='docs/DER.png'>

# SWE - Diagrama de Entidade e Relacionamento
<img src='docs/DER1.png'>

Tabela Plano Conta
<img src='docs/6.png'>

Tabela Transaçao
<img src='docs/7.png'>

<div id="piechart_3d" style="width: 900px; height: 500px;"></div>

Codigo utilizando google.charts para o Gráfico de Receitas vs Despesas por Período: O usuário precisa de um relatório
do tipo gráfico no formato pizza e que demonstre o total de receitas e despesas por
período de datas.
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load("current", { packages: ["corechart"] });
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['Transacao', 'Total'],
            ['Receitas', @Receitas],
            ['Despesas', @Despesas]

        ]);

        var options = {
            title: 'My Daily Activities',
            is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
    }
</script>

Controle de Finanças e Gastos
<img src='docs/1.png'>

Cadastro de Plano de Contas
<img src='docs/2.png'>

Plano de contas e Gastos Mensais 
<img src='docs/3.png'>

Transações Financeiras Mensais
<img src='docs/4.png'>

Registro de Transação
<img src='docs/5.png'>
 

