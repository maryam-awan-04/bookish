-- add foreign keys to Copies table
ALTER TABLE dbo.Copies ADD CONSTRAINT fk_copies_books FOREIGN KEY (bookId) REFERENCES dbo.Books(bookId)
ALTER TABLE dbo.Copies ADD CONSTRAINT fk_borrowed_books FOREIGN KEY (borrowedId) REFERENCES dbo.Borrowed(borrowedId)

-- add foreign keys to Borrowed table
ALTER TABLE dbo.Borrowed ADD CONSTRAINT fk_users_borrowed FOREIGN KEY (userId) REFERENCES dbo.Users(userId)
ALTER TABLE dbo.Borrowed ADD CONSTRAINT fk_copies_borrowed FOREIGN KEY (barcode) REFERENCES dbo.Copies(barcode)
