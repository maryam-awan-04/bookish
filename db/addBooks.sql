-- Insert book into table 'Books'
INSERT INTO dbo.Books
    ([bookTitle], [author], [isbn], [copies], [availableCopies], [available])
VALUES
    ('Born a Crime', 'Trevor Noah', '978-1-473-63530-2', 1, 1, 1),
    ('One of Us is Lying', 'Karen M.McManus', '978-0-141-37563-2', 1, 1, 1),
    ('The Marble Collector', 'Cecelia Ahern', '978-0-00-750184-7', 1, 1, 1)
GO
