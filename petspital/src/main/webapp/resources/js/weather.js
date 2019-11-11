const COORDS = 'coords';
const API_KEY = "1f5c140ceb2e7bc7ecc65e252a401519";
const weather = document.querySelector(".js-weather");

function getWeather(lat, lng){
    fetch(
        `https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lng}&appid=${API_KEY}&units=metric`
        ).then(function(response){//fetch가 끝나길 기다림
            return response.json();
        }).then(function(json){
        	  const icon = json.weather[0].icon;
              const img = new Image;
              img.src = `http://openweathermap.org/img/wn/${icon}@2x.png`;
        	const weat = json.weather[0].main;//날씨
           const temperature = json.main.temp;
           const place = json.name;
           weather.innerText = `온도 :  ${temperature} 장소 : ${place} 날씨 : ${weat} `;
           weather.appendChild(img);
        })
}

function saveCoords(coordsObj){
    localStorage.setItem(COORDS,JSON.stringify(coordsObj));
}

function handleGeoSuceess(position){
    const latitude = position.coords.latitude;
    const longitude = position.coords.longitude; 
    const coordsObj = {
        latitude,
        longitude
    };
    saveCoords(coordsObj);
    getWeather(latitude,longitude);
}
function handleGeoError(){
    console.log('Cant access geo local');
}
function askForCoords(){
    navigator.geolocation.getCurrentPosition(handleGeoSuceess,handleGeoError);
}

function loadCoords(){
    const loadedCords = localStorage.getItem(COORDS);
    if(loadedCords === null){
        askForCoords();
    }else{
        const parseCoords = JSON.parse(loadedCords);
        getWeather(parseCoords.latitude, parseCoords.longitude);
    }
}
function init(){
    loadCoords();
}
init();