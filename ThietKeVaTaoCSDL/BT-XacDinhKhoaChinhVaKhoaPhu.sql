ALTER TABLE transactions
ADD CONSTRAINT FK_AccountTrans
FOREIGN KEY (account_number) REFERENCES account(account_number);
