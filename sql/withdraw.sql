# CreateTable
CREATE TABLE IF NOT EXISTS withdraw (
  id INTEGER NOT NULL AUTO_INCREMENT,
  tx_hash VARCHAR(255) UNIQUE,
  address VARCHAR(255) NOT NULL,
  amount DECIMAL(64,20) NOT NULL,
  asset CHAR(32) NOT NULL,
  height INTEGER(11),
  tx_index INTEGER,
  status INTEGER(11) DEFAULT 1,
  create_time DATETIME DEFAULT NOW(),
  update_time DATETIME DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

# NewWithdraw
INSERT INTO withdraw (address, amount, asset) VALUES (?, ?, ?)