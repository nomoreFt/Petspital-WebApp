const ul = document.querySelector("#js-cart");





/*function addLi(data){
	const li = document.createElement('li');
	const img = document.createElement('img');
	const imgName =data.;
	img.src = '/petspital/resources/image/'+imgName.value;
	li.appendChild(img);
	ul.appendChild(li);
}
*/
function fetchImg(){
	fetch('http://localhost:8084/petspital/product/doC')
	  .then(function(response) {
	    return response.json();
	  }).then(function(data){
		  console.log(data.keys(data));
		  //addLi(data);
	  });
}

function init(){
fetchImg();
}
init();

