git clone https://github.com/a-johanson/oceantea-visualization-gateway.git
git clone https://github.com/a-johanson/oceantea-auth.git
git clone https://github.com/a-johanson/oceantea-vector-time-series.git
git clone https://github.com/a-johanson/oceantea-scalar-time-series.git
git clone https://github.com/a-johanson/oceantea-time-series-conversion.git

cd oceantea-visualization-gateway
call npm install
start /b cmd /c node index.js
cd ../oceantea-auth
call npm install
start /b cmd /c node index.js
cd ../oceantea-scalar-time-series
call npm install
start /b cmd /c node index.js
cd ../oceantea-time-series-conversion
call npm install
start /b cmd /c node index.js
cd ../oceantea-vector-time-series
start /b cmd /c python server.py
cd ..

start http://localhost:3333
