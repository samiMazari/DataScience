import requests
from bs4 import BeautifulSoup
import pandas as pd

# URL de base
url = "http://books.toscrape.com/"

# Envoyer la requête
response = requests.get(url)
soup = BeautifulSoup(response.text, "html.parser")

# Extraire tous les livres
books = soup.find_all("article", class_="product_pod")

# Stocker les données
data = []

for book in books:
    title = book.h3.a["title"]
    price = book.find("p", class_="price_color").text.strip()
    data.append({"Title": title, "Price": price})

# Convertir en DataFrame
df = pd.DataFrame(data)

# Exporter en CSV
df.to_csv("Books.csv", index=False, encoding="utf-8")
price = book.find("p", class_="price_color").text.strip().replace("£", "")


print("Scraping finished ! File Books.csv created.")