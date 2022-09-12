
html_code = document.querySelector('.html-code textarea');
js_code = document.querySelector('.js-code textarea');
result = document.querySelector('#result');





function run( ) {
    // Storing data in Local Storage
    localStorage.setItem('html_code', html_code.value);
    localStorage.setItem('js_code',  js_code.value  );
    const data={html:html_code.value,js:js_code.value}
    $.ajax({ type:"POST", url: "indexes2/vKnock.php",data:data, success: function(result){

        $("#result").html(result);
        console.log(result);
        $('#result').attr( 'srcdoc',result)


      }});


}


// Checking if user is typing anything in input field
html_code.onkeyup = () => run();
js_code.onkeyup = () => run();




// Accessing data stored in Local Storage. To make it more advanced you could check if there is any data stored in Local Storage.
html_code.value = "";
js_code.value = "";
