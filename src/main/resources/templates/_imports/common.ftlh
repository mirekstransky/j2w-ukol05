[#ftl]
[#macro page ]
    <!DOCTYPE html>
    <html lang="cs">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet"/>
        <link rel="stylesheet" href="css/style.css" />
        <title>Choose your destiny</title>
    </head>
    <body>
    <div class="container">
        <h2>Choose your opponent !</h2>
        <div class="grid-3-cols">

        [#nested ]

        </div>
        <footer>Copyright &copy; 2027 by Mirek Stránský.</footer>
    </div>
    </body>
    </html>
[/#macro]

[#macro polozky vyber]
    [#list vyber as item]
        <figure class="item">
            <img src="images/${item.image}" alt="item" />
            <div class="item-box">
                <h3>${item.name}</h3>
                <ul class="item-details">
                    <li>
                        <svg
                                xmlns="http://www.w3.org/2000/svg"
                                class="item-icon"
                                fill="#000000"
                                viewBox="0 0 256 256"
                        >
                            <path
                                    d="M128,24A104,104,0,1,0,232,128,104.11,104.11,0,0,0,128,24Zm0,192a88,88,0,1,1,88-88A88.1,88.1,0,0,1,128,216Zm48-88a8,8,0,0,1-8,8H136v32a8,8,0,0,1-16,0V136H88a8,8,0,0,1,0-16h32V88a8,8,0,0,1,16,0v32h32A8,8,0,0,1,176,128Z"
                            ></path>
                        </svg>
                        <span>${item.firstStrength}</span>
                    </li>
                    <li>
                        <svg
                                xmlns="http://www.w3.org/2000/svg"
                                class="item-icon"
                                fill="#000000"
                                viewBox="0 0 256 256"
                        >
                            <path
                                    d="M128,24A104,104,0,1,0,232,128,104.11,104.11,0,0,0,128,24Zm0,192a88,88,0,1,1,88-88A88.1,88.1,0,0,1,128,216Zm48-88a8,8,0,0,1-8,8H136v32a8,8,0,0,1-16,0V136H88a8,8,0,0,1,0-16h32V88a8,8,0,0,1,16,0v32h32A8,8,0,0,1,176,128Z"
                            ></path>
                        </svg>
                        <span>${item.secondStrength}</span>
                    </li>
                    <li>
                        <svg
                                xmlns="http://www.w3.org/2000/svg"
                                class="item-icon"
                                fill="#000000"
                                viewBox="0 0 256 256"
                        >
                            <path
                                    d="M128,24A104,104,0,1,0,232,128,104.11,104.11,0,0,0,128,24Zm0,192a88,88,0,1,1,88-88A88.1,88.1,0,0,1,128,216Zm48-88a8,8,0,0,1-8,8H136v32a8,8,0,0,1-16,0V136H88a8,8,0,0,1,0-16h32V88a8,8,0,0,1,16,0v32h32A8,8,0,0,1,176,128Z"
                            ></path>
                        </svg>
                        <span>${item.thirdStrength}</span>
                    </li>
                    <li>
                        <svg
                                xmlns="http://www.w3.org/2000/svg"
                                class="item-icon"
                                fill="#000000"
                                viewBox="0 0 256 256"
                        >
                            <path
                                    d="M176,128a8,8,0,0,1-8,8H88a8,8,0,0,1,0-16h80A8,8,0,0,1,176,128Zm56,0A104,104,0,1,1,128,24,104.11,104.11,0,0,1,232,128Zm-16,0a88,88,0,1,0-88,88A88.1,88.1,0,0,0,216,128Z"
                            ></path>
                        </svg>
                        <span>${item.firstWeakness}</span>
                    </li>
                    <li>
                        <svg
                                xmlns="http://www.w3.org/2000/svg"
                                class="item-icon"
                                fill="#000000"
                                viewBox="0 0 256 256"
                        >
                            <path
                                    d="M176,128a8,8,0,0,1-8,8H88a8,8,0,0,1,0-16h80A8,8,0,0,1,176,128Zm56,0A104,104,0,1,1,128,24,104.11,104.11,0,0,1,232,128Zm-16,0a88,88,0,1,0-88,88A88.1,88.1,0,0,0,216,128Z"
                            ></path>
                        </svg>
                        <span>${item.secondWeakness}</span>
                    </li>
                </ul>
                <form action="/" method="post">
                    <div class="item-price">
                        <strong>${item.price}€</strong>
                        <input type="hidden" value="${item.price}" name="price" />
                        <input type="hidden" value="${item.name}" name="name" />
                        <button type="submit" class="btn btn--small">Enter the battle</button>

                    </div>
                </form>
            </div>
        </figure>
    [/#list]
[/#macro]