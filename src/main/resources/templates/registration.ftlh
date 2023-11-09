[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registration for battle</title>
    <link rel="stylesheet" href="/style-reg.css"/>
</head>
<body>
<div class="container">
    <form class="kosik" action="/alkohol" method="post">
        <h1>Registration for battle</h1>
[#--        <label for="jmeno" class="radek">Jméno a příjmení:</label>--]
[#--        [@spring.formInput path="form.jmeno" /]--]
[#--        <div class="error">[@spring.showErrors "<br>"/]</div>--]
    </form>
</div>

</body>
</html>