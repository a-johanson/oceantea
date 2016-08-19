cd oceantea-visualization-gateway
start /b cmd /c node index.js
cd ../oceantea-auth
start /b cmd /c node index.js
cd ../oceantea-scalar-time-series
start /b cmd /c node index.js
cd ../oceantea-time-series-conversion
start /b cmd /c node index.js
cd ../oceantea-vector-time-series
start /b cmd /c python server.py
cd ..

start http://localhost:3333
