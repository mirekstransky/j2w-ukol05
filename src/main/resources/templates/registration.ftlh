[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registration for battle</title>
    <link rel="stylesheet" href="/css/style-reg.css"/>
    <style>
        body{
            background: white url(/images/${image}.jpg) center center/cover no-repeat;
        }
    </style>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik+Mono+One&display=swap" rel="stylesheet">
</head>
<body>
<div class="container">
    <form class="kosik" action="/registration" method="post">
        <h1>Registration for battle</h1>
[#--        <div class="status">${vizitka.status!x}</div>--]

        <label for="name" class="radek">Name:</label>

        [@spring.formInput path="form.name" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>


        <label for="surname" class="radek">Surname:</label>
        [@spring.formInput path="form.surname" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="age" class="radek">Age:</label>
        [@spring.formInput path="form.age" fieldType="number" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="email" class="radek">E-mail:</label>
        [@spring.formInput path="form.email" fieldType="email" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="card" class="radek">Card:</label>
        [@spring.formInput path="form.card" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">
            [@spring.formCheckbox path="form.termsAndConditions" /]
            <label for="termsAndConditions">Term and Conditions</label>
        </div>
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">
            [@spring.formCheckbox path="form.printObituary" /]
            <label for="printObituary">Print Obituary</label>
        </div>
        <div class="error">[@spring.showErrors "<br>"/]</div>


        <button type="submit" class="btn btn--small">Order a fight</button>


    </form>
</div>

</body>
</html>