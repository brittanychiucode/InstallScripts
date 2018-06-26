# Install java
sudo apt-get install -y default-jre

# Install zookeeper
sudo apt-get install -y zookeeperd

# Add Kafka user
sudo adduser --system --no-create-home --disabled-password --disabled-login kafka

# Install Kafka Server
cd ~
wget "http://www-eu.apache.org/dist/kafka/1.0.1/kafka_2.12-1.0.1.tgz"

# Create a directory for extracting Kafka
sudo mkdir /opt/kafka
sudo tar -xvzf kafka_2.12-1.0.1.tgz --directory /opt/kafka --strip-components 1

# Kafka persists data to disk so we will now make a directory for it.
sudo mkdir /var/lib/kafka
sudo mkdir /var/lib/kafka/data

# Ensure Permission of Directories
sudo chown -R kafka:nogroup /opt/kafka
sudo chown -R kafka:nogroup /var/lib/kafka

# Install kafka-python
pip install kafka-python

# Start the Kafka server 
sudo /opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties