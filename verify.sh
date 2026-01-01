#!/bin/bash

# Base URL
BASE_URL="http://localhost:8080/api/books"

curl -v -X POST "$BASE_URL" \
     -H "Content-Type: application/json" \
     -d '{"title": "The Great Gatsby", "author": "F. Scott Fitzgerald", "isbn": "978-0743273565"}'
echo -e "\n\n"


curl -v -X POST "$BASE_URL" \
     -H "Content-Type: application/json" \
     -d '{"title": "", "author": "Unknown", "isbn": "12345"}'
echo -e "\n\n"


curl -v -X POST "$BASE_URL" \
     -H "Content-Type: application/json" \
     -d '{"title": "Test Book", "author": "Test Author", "isbn": "abc-123"}'
echo -e "\n\n"


curl -v -X GET "$BASE_URL"
echo -e "\n\n"

# Assuming the first book created has ID 1. If not, adjust accordingly.
BOOK_ID=1


curl -v -X GET "$BASE_URL/$BOOK_ID"
echo -e "\n\n"


curl -v -X GET "$BASE_URL/9999"
echo -e "\n\n"


curl -v -X PUT "$BASE_URL/$BOOK_ID/checkout"
echo -e "\n\n"


curl -v -X PUT "$BASE_URL/$BOOK_ID/checkout"
echo -e "\n\n"


curl -v -X PUT "$BASE_URL/$BOOK_ID/return"
echo -e "\n\n"


curl -v -X PUT "$BASE_URL/9999/return"
echo -e "\n"
