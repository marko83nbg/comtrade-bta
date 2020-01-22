<h2>Moguci pozivi za API</h2>
Vraca korisnika sa navedenim korisnickim imenom i sifrom (ovo je samo privremeno resenje):
<pre>
  fetch('/login/{username}/{password}')
</pre>
Vraca spisak svih gradova kao niz objekata:
<pre>
  fetch('/cities')
</pre>
Vraca zeljeni grad po id-u:
<pre>
  fetch('/city/{id}')
</pre>
Vraca sve hotele u zeljenom gradu, preko navedenog id-a grada:
<pre>
  fetch('/hotels/{id}')
</pre>
Vraca hotel preko navedenog id-a hotela:
<pre>
  fetch('/hotel/{id}')
</pre>
Vraca sve slike hotela preko id-a hotela:
<pre>
  fetch('/hotel-images/{id}')
</pre>
Vraca sve znamenitosti u nekom gradu, preko navedenog id-a grada:
<pre>
  fetch('/attractions/{id}')
</pre>
Vraca sav feedback za zeljeni grad, preko navedenog id-a grada:
<pre>
  fetch('/feedback-grad/{id}')
</pre>
Vraca sve komentare na neki feedback hotela, preko navedenog id-a feedbacka:
<pre>
  fetch('/komentar-grad/{id}')
</pre>
Vraca sav feedback za zeljeni hotel, preko navedenog id-a hotela:
<pre>
  fetch('/feedback-hotel/{id}')
</pre>
Vraca sve komentare na neki feedback hotela, preko navedenog id-a feedbacka:
<pre>
  fetch('/komentar-hotel/{id}')
</pre>
<h2>Post requests:</h2>
<p>Za svaki fetch koji nije get zahtev, mora se poslati objekat u kome pise koji se metod koristi, koji tip sadrzaja prima, i telom requesta. Primer ovoga imate na accommodations.js stranici pod komentarom "Slanje feedbacka za hotel".</p>
Okaci feedback za neki grad (sa requestom se mora poslati i telo requesta, sa obaveznim property-ima: gradId, korisniciId (id korisnika koji ostavlja feedback), rating, naziv, opis)
<pre>
  fetch('/post-feedback-city')
</pre>
Okaci komentar na feedback za neki grad (sa requestom se mora poslati i telo requesta, sa obaveznim property-ima: korisniciId (id korisnika koj ostavlja komentar), feedbackId (id feedbacka na koji se odnosi komentar), text)
<pre>
  fetch('/post-comment-city')
</pre>
Okaci feedback za neki hotel (sa requestom se mora poslati i telo requesta, sa obaveznim property-ima: hotelId, korisniciId (id korisnika koji ostavlja feedback), rating, naziv, opis)
<pre>
  fetch('/post-feedback-hotel')
</pre>
Okaci komentar na feedback za neki hotel (sa requestom se mora poslati i telo requesta, sa obaveznim property-ima: korisniciId (id korisnika koj ostavlja komentar), feedbackId (id feedbacka na koji se odnosi komentar), text)
<pre>
  fetch('/post-comment-hotel')
</pre>
