<html>
    <head>
        <style>
            #p{
                background-color:red;
                font-size:100px;
                font-family:Bodoni MT Black;
                text-align:inherit;
            }
            #body
            {
                background-image:url("login14.jpg");
                background-repeat:no-repeat;
            }
            #login
            {
                margin-left:350px;
                margin-top:100px;
            }
            #regis
            {
                margin-left:200px;
                margin-top:100px;
            }
            .button
            {
                border-radius:30px;
                font-style:bold;
                font-size:20px;
                font-family:Bodoni MT Black;  
                width:150px;
                height:50px;
                background:linear-gradient(to right,rgb(192,192,192),rgb(244,244,244));
                color:black;
            }
        </style>

    </head>
    <body id="body">
        <div>
            <table>
                <tr>
                    <td> <form action="login.jsp"> <input type="submit" value="Faculty"  id="login" class="button"></form></td> 
                    <td id="my"><form action="student.jsp"> <input type="submit" value="Students" id="regis" class="button"></form></td> 
                </tr>   
            </table>
            <center> <p id="p">Welcome</p></center> 

        </div>
    </body>
</html>