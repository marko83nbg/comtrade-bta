# comtrade-internship-app
Business Trip Advisor - a Comtrade internship project<br>
<h2 title="The Dirty Half-Dozen">The Team</h2>
<ul>
 <li>https://github.com/stefancvetincanin - Stefan Cvetinčanin</li>
 <li>https://github.com/marko83nbg - Marko Tomašević</li>
 <li>https://github.com/darkoradisavljevic - Darko Radisavljević</li>
 <li>https://github.com/lazarvelickovic - Lazar Veličković</li>
 <li>https://github.com/toshew - Vladan Tošev</li>
 <li>https://github.com/PetrovicNatasa - Nataša Petrović</li>
</ul>
<h2 title="We should have used react">Built using</h2>
<ul>
 <li>Bootstrap and jQuery for the front-end</li>
 <li>Node.js and mySql for the server-side</li>
</ul>
<h2 title="Čemu ovo služi a pritom i ne radi?">What is this?</h2>
<p>
  Application Business Trip Advisor should improve internal communication among employees who are traveling for business. In the first phase, the application provides information about accommodation and life in the city to Comtrade employees, and gives them the opportunity to share useful information with their colleagues for future trips to the same location.
</p>
<h2 title="You're holding it upside down">How to run it?</h2>
<p>First, clone the repository to your pc.<br>
Second, you need to have Xampp, or Wamp, or any other web server solution installed that can host a mySql database. Start the server and mySql services, create a new database called "bta_baza" using utf8_unicode_ci encoding, and import the bta_baza.sql file located in:</p>
<pre>
 comtrade-internship-app/baza/bta_baza.sql
</pre>
<p>After that is done, navigate to the folder where you cloned the repository using your favourite terminal, and install the necessary dependencies and start the app (you should have the latest node.js and npm installed).</p>
<pre>
 npm install
 node app.js
</pre>
<p>All done! The app will be hosted at localhost:3000</p>
