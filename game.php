<?php $obra = [

"João Melo" =>

["Fabulema", "Definição"],

"Cremilde de Lima" => [
        "O tamborino Doido",
        "O balão vermelho",
        "Missanga e o Sapupo"
],

"Costa Abrante Andrade" => [

        "O regresso e o Conto",
        "A história de contrato",
        "Fala do amor por amar",
        "Dizer assim",
        "Lenha seca",
        "Ontem e depois",
        "O Cunene corre para o sul",
        "Terra gredada",
        "Terra das Acácias Rubras"
],



"José Mena Abrantes" => [
        "A tirânia dos deuses",
        "Cegueira",
        "Meninos",
        "A última viagem do príncipe perfeito",
        "O pássaro e o morto",
        "O órfão do rei",
],
"António Agostinho Neto" => [
        "Nausías",
        "Renúncia impossível",
        "Havemos de voltar",
        "Sagrada esperança"
],

"António Jacinto" => [
        "Sobreviver em tarrafal",
        "Vovó Bartolomeu",
        "Em quilwagem do golungo",
        "Monangambe",
        "O Grande desafio",
        "Carta de um contratado",
        "Declaração"
],

"José Luandino Viera" => [
        "A cidade e a infância",
        "Vidas novas",
        "Luuanda",
        "Velhas histórias",
        "Nós os do Makulusso",
        "Os seus amores",
        "No antigamento da vida",
        "Makandumba",
        "A vida verdadeira de Domingos Xavier",
        "Laurentino"
],

"Boaventura Cardoso" => [

        "A Morte de Velho Kipakasa",
        "Disanga-dia-meunho",
        "O signo do fogo",
        "Fogo da fala"
],

"Viriato da Cruz" => [
        "Namoro",
        "Sou Santo",
        "Makezo",
        "Poema"
],

"Manuel Rui Monteiro" => [

        " A caixa",
        " O mar",
        " Assalto",
        " Angola Avante",
        " Regresso adiado",
        " Cinco vezes onze",
        " Cinco dias depois da independência",
        " Rio seco",
        " Agricultura",
        " Poemas sem notícias",
        " Crónicas de um mujimbo",
        " Quem me dera ser onda",
        " A onda"
],

"Artur Carlos Pestana (Pepetela)" => [
        "Mayombe",
        "As aventuras de Ngunga",
        "A geração de Útopia",
        "O Cão e os Calús",
        "Loueji",
        "A gloriosa família"
],

"Mendes de Carvalho ( Wanhenga Xitu)" => [
        " Mestre Tamoda",
        " Macas na Sanzala",
        " Vozes na Sanzala (Kahito)",
        " Monana",
        " O Ministro",
        " Os sobreviventes das máquinas de depõem"
],

"Jofre Rocha" => [
        "60 Canções de amor e Luta",
        "Estórias do Musseque"
],

"Henriques Abrangente" => [

        "Os Senhores do Areal",
        " Gente que anda por aí",
        "As mares do Bacilon / O ovo magentino",
        "Misericórdia para o Reino do Kongo!"
],


"Óscar Bento Ribas" => [
        "Flores e Espinho",
        "Uanga - feitiço",
        "Ecos da minha Terra",
        "Temas da Vida Angolanas e Suas Incidências",
        "Ilundo - Espíritos e Ritos angolanos",
        "Missosso",
        "Tudo isto aconteceu - Romance autobiográfico"
]

];

$sorte = rand(0, 14);

switch ($sorte) {
case 0:
        $_SESSION["autor"] = "João Melo";
        $pergunta = $obra[$_SESSION["autor"]][rand(0, count($obra[$_SESSION["autor"]]) - 1)];

        break;
case 1:
        $_SESSION["autor"] = "Cremilde de Lima";
        $pergunta = $obra[$_SESSION["autor"]][rand(0, count($obra[$_SESSION["autor"]]) - 1)];

        break;
case 2:
        $_SESSION["autor"] = "Costa Abrante Andrade";
        $pergunta = $obra[$_SESSION["autor"]][rand(0, count($obra[$_SESSION["autor"]]) - 1)];

        break;

case 3:
        $_SESSION["autor"] = "José Mena Abrantes";
        $pergunta = $obra[$_SESSION["autor"]][rand(0, count($obra[$_SESSION["autor"]]) - 1)];

        break;

case 4:
        $_SESSION["autor"] = "António Agostinho Neto";
        $pergunta = $obra[$_SESSION["autor"]][rand(0, count($obra[$_SESSION["autor"]]) - 1)];

        break;
case 5:
        $_SESSION["autor"] = "António Jacinto";
        $pergunta = $obra[$_SESSION["autor"]][rand(0, count($obra[$_SESSION["autor"]]) - 1)];

        break;

case 6:
        $_SESSION["autor"] = "José Luandino Viera";
        $pergunta = $obra[$_SESSION["autor"]][rand(0, count($obra[$_SESSION["autor"]]) - 1)];

        break;

case 7:
        $_SESSION["autor"] = "Boaventura Cardoso";
        $pergunta = $obra[$_SESSION["autor"]][rand(0, count($obra[$_SESSION["autor"]]) - 1)];

        break;
case 8:
        $_SESSION["autor"] = "Viriato da Cruz";
        $pergunta = $obra[$_SESSION["autor"]][rand(0, count($obra[$_SESSION["autor"]]) - 1)];

        break;
case 9:
        $_SESSION["autor"] = "Manuel Rui Monteiro";
        $pergunta = $obra[$_SESSION["autor"]][rand(0, count($obra[$_SESSION["autor"]]) - 1)];

        break;
case 10:
        $_SESSION["autor"] = "Artur Carlos Pestana (Pepetela)";
        $pergunta = $obra[$_SESSION["autor"]][rand(0, count($obra[$_SESSION["autor"]]) - 1)];

        break;
case 11:
        $_SESSION["autor"] = "Mendes de Carvalho ( Wanhenga Xitu)";
        $pergunta = $obra[$_SESSION["autor"]][rand(0, count($obra[$_SESSION["autor"]]) - 1)];

        break;
case 12:
        $_SESSION["autor"] = "Jofre Rocha";
        $pergunta = $obra[$_SESSION["autor"]][rand(0, count($obra[$_SESSION["autor"]]) - 1)];

        break;
case 13:
        $_SESSION["autor"] = "Henriques Abrangente";
        $pergunta = $obra[$_SESSION["autor"]][rand(0, count($obra[$_SESSION["autor"]]) - 1)];

        break;
case 14:
        $_SESSION["autor"] = "Óscar Bento Ribas";
        $pergunta = $obra[$_SESSION["autor"]][rand(0, count($obra[$_SESSION["autor"]]) - 1)];

        break;
}
?>
