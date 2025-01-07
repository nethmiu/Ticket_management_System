<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Raise Ticket</title>


    
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('123.jpg');
			background-attachment: fixed;
			background-size: 100% 100%;
            
        }
        fieldset {
            border: 5px solid #007bff;
            border-radius: 10px;
            width: 50%; 
            margin: 50px auto; 
            padding: 20px; 
            background-color: #b6f8f8; 
        }
        legend {
            font-size: 24px;
            font-weight: bold;
            color: #007bff;
            margin-bottom: 20px;
        }
        form {
            text-align: left; 
            background-color: #b6f8f8; 
        }
        #ax {
            background-color: #fefffe;
            font-size: 18px;
            color: #160236;
            padding: 10px 20px;
            border-radius: 7px;
            width:140px;
            height: 70px;
            cursor: pointer;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }
        #ax:hover {
            background-color: #55ec19; 
            color: rgb(8, 30, 71);
            font-size: 19px;
            width: 160px;
        
        }
        input[type="text"], input[type="email"], input[type="date"],input[type="number"], select {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 10px;
            border: 2px solid #080e09;
            border-radius: 10px;
            box-sizing: border-box;
        }
        input[type="text"][name="de"] {
            height: 100px; 
        }
        label {
            font-weight: bold; 
        }

        #re{
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            border-radius: 5px;

        }

        #re:hover{
            background-color: rgb(231, 26, 26);
        }

        #navbar{
	width: 100%;
	background-color: #39b1a4;
	border-bottom: 1px solid #39b1a4;
	height: 20px;
	-webkit-box-shadow: 0 2px 2px 2px #888;
		-moz-box-shadow: 0 2px 2px 2px #888;
			box-shadow: 0 2px 2px 2px #888;
			
	}

    ul {
  list-style-type: none;
  margin: 0;
  padding-left: 50px;
  height: 60px;
  overflow: hidden;
  background-color: #333;
}

li {
  float:right;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 30px 16px;
  text-decoration: none;
}


li a:hover {
  background-color: #111;
}

.clear
	{
		clear: both;
        
	}

    </style>
    <script>

       function par(){
        alert("Your data was cleard..");

        location.reload();

       }
       
  
       
    </script>
</head>
<body>

<div id="navbar">	
			
        <ul>
            <img id="logo" src="Help.png" height="60px" width="160px"style=padding-left: 20px;>
            <li><a href="#">Login</a></li>
            <li><a href="#">Support Ticket</a></li>
            <li><a href="#">Contact a lecturer</a></li>
            <li><a href="#">Home</a></li>
          </ul>


    </div>

    <fieldset>
        <legend>Raise Ticket</legend>
        <form action="addticket" method="post">
            
            <label for="rn">Registration Number:</label><br>
            <input type="text" id="rn" name="rn" required><br><br>

            <label for="na">Name:</label><br>
            <input type="text" id="na" name="na" required><br><br>
            

            <label for="em">E-mail:</label><br>
            <input type="email" id="em" name="em" required><br><br>

            <label for="su">Subject:</label><br>
            <input type="text" id="su" name="su" required><br><br>


            <label for="de">Description:</label><br>
            <input type="text" id="de" name="de" required><br><br>


            
            <br><br>
            

            
            <center><button id="ax">Submit Ticket</button></center>
            <br>
            <center><button id="re" onclick="par()">Clear</button></center>

        </form>
    </fieldset>
    <div class="clear"></div>
			
             
				
                
							
         			<center><footer> Copyright &copy;  Help Manager</footer></center>

        </div>

</body>
</html>