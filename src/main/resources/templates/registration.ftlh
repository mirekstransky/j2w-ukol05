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
</head>
<body>
<div class="container">
    <form class="kosik" action="/registration" method="post">
        <h1>Registration for battle</h1>
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

        <div class="radek controls">
            <button type="submit">Order a fight</button>
        </div>

    </form>
</div>

</body>
</html>