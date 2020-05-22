

const btn = document.querySelector(".btn");
const btn2 = document.querySelector(".btn2");
const bolid = document.querySelector(".bolid");

btn.addEventListener('click', function(){
    bolid.style.animation = "jazda 3s infinite";
})
btn2.addEventListener('click', function(){
    bolid.style.animation = "paused";
})



// Set the date we're counting down to
var countDownDate = new Date("Jul 5, 2020 15:10:00").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

  // Get today's date and time
  var now = new Date().getTime();
    
  // Find the distance between now and the count down date
  var distance = countDownDate - now;
    
  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
  // Output the result in an element with id="demo"
  document.getElementById("demo").innerHTML = days + " d " + hours + " h "
  + minutes + " m " + seconds + " s ";
    
 
}, 1000);
