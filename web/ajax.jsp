<%-- 
    Document   : ajax
    Created on : Jan 29, 2021, 10:21:12 AM
    Author     : tania
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css.css" />
        <script src="jquery.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>

     <script>  function callJqueryAjax(){
      var name = $('#name').val();
      $.ajax({
      url     : 'AjaxServlet',
      method     : 'POST',
      data     : {name : name},
      success    : function(resultText){
      $('#result').html(resultText);
      },
      error : function(jqXHR, exception){
      console.log('Error occured!!');
      }
      });
      }
              </script>


    </head>
    <body>
        <h2>AJAX Example</h2>
        <br/>
        <input type="text" id="name" placeholder="Enter your name:"   /><br/>
            <br/>
        <button class="btn" onclick="callJqueryAjax()">Click to Send a jquery Ajax request</button>
        <br/><br/>
        <h3 id="result"></h3>
            <br/><br/>
        <button   class="btn" onclick="callJsAjax()"> Click Here to bring list from DB with js ajax request</button>
            <br/><br/>
        <select id="select">
        </select>
             <br/><br/>
                <a href="index.html"> Back</a>
        <script>
            function callJsAjax() {
                  var select= document.getElementById("select");
                  const request = new XMLHttpRequest();
                const url = "AjaxServlet?name="+name;
                  
           request.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
       
                         const data= JSON.parse(request.responseText);
                        for(let i=0; i<data.length;i++){
                        let option= document.createElement("option");
                        option.text=data[i].first_name + " " + data[i].last_name;
                        select.add(option);
                    }
                    } 
                };
     request.open('GET', url, true);
     request.send();
            }
  </script>    
    </body>
</html>
