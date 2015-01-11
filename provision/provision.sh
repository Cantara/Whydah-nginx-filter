set -e

DIR=/home/vagrant

pushd /vagrant/provision

sudo apt-get install make
sudo apt-get install openjdk-7-jre-headless

mkdir -p $DIR/useradminservice
chown vagrant:vagrant $DIR/useradminservice
pushd useradminservice
sudo cp start-user-admin-service.sh $DIR/useradminservice
sudo cp useradminservice.TEST.properties $DIR/useradminservice
popd

mkdir -p $DIR/securitytokenservice
chown vagrant:vagrant $DIR/securitytokenservice
pushd securitytokenservice
sudo cp update-security-token-service.sh $DIR/securitytokenservice
sudo cp start-security-token-service.sh $DIR/securitytokenservice
sudo cp securitytokenservice.TEST.properties $DIR/securitytokenservice
popd

mkdir -p $DIR/sso-login-webapp
chown vagrant:vagrant $DIR/sso-login-webapp
pushd sso-login-webapp
sudo cp update-service.sh $DIR/sso-login-webapp
sudo cp start-service.sh $DIR/sso-login-webapp
sudo cp ssologinwebapp.TEST.properties $DIR/sso-login-webapp
popd

popd
