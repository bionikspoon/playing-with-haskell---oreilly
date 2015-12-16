module BookStore where


data BookInfo = Book Isdn Title [Author]
                deriving Show
data MagazineInfo = Magazine Isdn Title [Author]
                    deriving Show
data BookReview = BookReview BookInfo CustomerId ReviewBody
data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerId
                   deriving Show

data Customer = Customer {
    customerId      :: CustomerId,
    customerName    :: String,
    customerAddress :: Address
} deriving Show


data Bool = False | True


type Isdn = Int
type Title = String
type Author = String
type CustomerId = Int
type ReviewBody = String
type BookRecord = (BookInfo, BookReview)
type CardHolder = String
type CardNumber = String
type Address = [String]

bookIsdn :: BookInfo -> Isdn
bookIsdn    (Book isdn _     _      ) = isdn
bookTitle :: BookInfo -> Title
bookTitle   (Book _    title _      ) = title
bookAuthors :: BookInfo -> [Author]
bookAuthors (Book _    _     authors) = authors


myInfo :: BookInfo
myInfo = Book 9780135072455 "Algebra of Programming" ["Richard Bird", "Oege de Moor"]

customer1 :: Customer
customer1 = Customer 271828 "J.R. Hacker" ["255 Syntax Ct", "Milpitas, CA 95134", "USA"]

customer2 :: Customer
customer2 = Customer {
    customerId = 271828,
    customerAddress = ["1048576 Disk Drive", "Milpitas, CA 95134", "USA"],
    customerName = "Jane Q. Citizen"
}
