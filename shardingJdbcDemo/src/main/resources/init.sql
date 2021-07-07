## 分库分表

create schema demo_ds_0;
create schema demo_ds_1;

CREATE TABLE IF NOT EXISTS demo_ds_0.t_order_0 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));
CREATE TABLE IF NOT EXISTS demo_ds_0.t_order_1 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));
CREATE TABLE IF NOT EXISTS demo_ds_1.t_order_0 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));
CREATE TABLE IF NOT EXISTS demo_ds_1.t_order_1 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));

CREATE TABLE IF NOT EXISTS demo_ds_0.t_order_item_0 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));
CREATE TABLE IF NOT EXISTS demo_ds_0.t_order_item_1 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));
CREATE TABLE IF NOT EXISTS demo_ds_1.t_order_item_0 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));
CREATE TABLE IF NOT EXISTS demo_ds_1.t_order_item_1 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));


CREATE TABLE IF NOT EXISTS demo_ds_0.t_address (address_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, address VARCHAR(50), PRIMARY KEY (address_id));
CREATE TABLE IF NOT EXISTS demo_ds_1.t_address (address_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, address VARCHAR(50), PRIMARY KEY (address_id));

##读写分离

create schema ds_master_0;
create schema ds_master_0_slave_0;
create schema ds_master_0_slave_1;
create schema ds_master_1;
create schema ds_master_1_slave_0;
create schema ds_master_1_slave_1;

CREATE TABLE IF NOT EXISTS ds_master_0.t_order_0 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));
CREATE TABLE IF NOT EXISTS ds_master_0.t_order_1 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));
CREATE TABLE IF NOT EXISTS ds_master_0_slave_0.t_order_0 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));
CREATE TABLE IF NOT EXISTS ds_master_0_slave_0.t_order_1 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));
CREATE TABLE IF NOT EXISTS ds_master_0_slave_1.t_order_0 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));
CREATE TABLE IF NOT EXISTS ds_master_0_slave_1.t_order_1 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));
CREATE TABLE IF NOT EXISTS ds_master_1.t_order_0 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));
CREATE TABLE IF NOT EXISTS ds_master_1.t_order_1 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));
CREATE TABLE IF NOT EXISTS ds_master_1_slave_0.t_order_0 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));
CREATE TABLE IF NOT EXISTS ds_master_1_slave_0.t_order_1 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));
CREATE TABLE IF NOT EXISTS ds_master_1_slave_1.t_order_0 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));
CREATE TABLE IF NOT EXISTS ds_master_1_slave_1.t_order_1 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));

CREATE TABLE IF NOT EXISTS ds_master_0.t_order_item_0 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));
CREATE TABLE IF NOT EXISTS ds_master_0.t_order_item_1 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));
CREATE TABLE IF NOT EXISTS ds_master_0_slave_0.t_order_item_0 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));
CREATE TABLE IF NOT EXISTS ds_master_0_slave_0.t_order_item_1 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));
CREATE TABLE IF NOT EXISTS ds_master_0_slave_1.t_order_item_0 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));
CREATE TABLE IF NOT EXISTS ds_master_0_slave_1.t_order_item_1 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));
CREATE TABLE IF NOT EXISTS ds_master_1.t_order_item_0 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));
CREATE TABLE IF NOT EXISTS ds_master_1.t_order_item_1 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));
CREATE TABLE IF NOT EXISTS ds_master_1_slave_0.t_order_item_0 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));
CREATE TABLE IF NOT EXISTS ds_master_1_slave_0.t_order_item_1 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));
CREATE TABLE IF NOT EXISTS ds_master_1_slave_1.t_order_item_0 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));
CREATE TABLE IF NOT EXISTS ds_master_1_slave_1.t_order_item_1 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));


CREATE TABLE IF NOT EXISTS ds_master_0.t_address (address_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, address VARCHAR(50), PRIMARY KEY (address_id));
CREATE TABLE IF NOT EXISTS ds_master_0_slave_0.t_address (address_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, address VARCHAR(50), PRIMARY KEY (address_id));
CREATE TABLE IF NOT EXISTS ds_master_0_slave_1.t_address (address_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, address VARCHAR(50), PRIMARY KEY (address_id));
CREATE TABLE IF NOT EXISTS ds_master_1.t_address (address_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, address VARCHAR(50), PRIMARY KEY (address_id));
CREATE TABLE IF NOT EXISTS ds_master_1_slave_0.t_address (address_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, address VARCHAR(50), PRIMARY KEY (address_id));
CREATE TABLE IF NOT EXISTS ds_master_1_slave_1.t_address (address_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, address VARCHAR(50), PRIMARY KEY (address_id));



