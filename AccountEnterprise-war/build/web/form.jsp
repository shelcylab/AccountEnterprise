<%-- 
    Document   : form
    Created on : 1 Feb, 2021, 5:30:02 PM
    Author     : shelc
--%>

<html>

    <head>

        <title>Bank Account</title>

    </head>



    <body>

        <h1><p align="center"><font size="6" color="#800000">Bank Transaction Request Form</h1>

        <hr><br>

        <table bgcolor="#FFFFCC" align="center"> 

            <form action="WebClient.jsp" method="POST">

                <tr><td></tr></td>

                <tr><td>Enter the amount:

                    <input type="text" name="amt" size="10"></tr></td>

                <br> 

                <tr><td><b>Select your choice:</b></tr></td>

                <tr><td><input type="radio" name="group1" value ="dep">Deposit</tr></td>

                <tr><td><input type="radio" name="group1" value ="with">Withdraw<br></tr></td>



                <tr><td>

                        <input type="submit" value="Transmit">

                    <input type="reset" value="Reset"></tr></td>

                <tr><td></tr></td>



            </form>

        </table>



    </body>

</html>