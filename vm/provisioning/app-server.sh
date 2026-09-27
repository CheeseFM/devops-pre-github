echo '==[ Welkom bij eerste prototype app-server! ]=='
sudo dnf install -y git dotnet-sdk-9.0

sudo firewall-cmd --permanent --add-port=5000/tcp --add-port=5001/tcp
sudo firewall-cmd --reload

mkdir /app ; cd /app
git clone https://github.com/HOGENT-RISE/2526-dotnet-template
cd 2526-dotnet-template/src/Rise.Server
echo '==[ We bouwen en starten de template applicatie ]=='
echo ' -> Je kan ze straks bereiken via https://localhost:5001'
dotnet run --urls "http://0.0.0.0:5000;https://0.0.0.0:5001"
