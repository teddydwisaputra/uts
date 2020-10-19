//seleksi
//byid
//byname
//className

//1 by id // elements
const judul = document.getElementById('judul');
// ubah tulisan js
judul.style.color = 'white';
judul.style.backgroundColor='blue';

const ju = document.getElementById('ju');
// ubah tulisan js
judul.style.color = 'white';
judul.style.backgroundColor='bluesky';

//by tag name //html colection
const p = document.getElementsByTagName('p');
p[0].style.backgroundColor='lightblue';

//array ga bisa diwarnai
//bisa 1x dengan catatan looping

//by className
const p1 = document.getElementsByClassName('p1');
p1[0].style.backgroundColor='yellow';