const ul = document.querySelector("#js-cart");


function addLi(data){
	for(let i = 0; i < data.length; i++){
	const li = document.createElement('li');
	const img = document.createElement('img');
	img.src = '/petspital/resources/image/'+data[i];
	li.appendChild(img);
	ul.appendChild(li);
	}
}

function fetchImg(){
	fetch('https://192.168.0.57:8443/petspital/product/doC')
	  .then(function(response) {
	    return response.json();
	  }).then(function(data){	
		  console.log(data);
		  addLi(data);
	  });
}

function init(){
fetchImg();
}
init();

